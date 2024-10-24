<?php
session_start();

$conn = new mysqli("sql208.infinityfree.com", "if0_37531758", "YQlujuMWAfwcAxM", "if0_37531758_imfinals");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize the cart if it's not already set
if (!isset($_SESSION['cart']) || !is_array($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Handle add to cart
if (isset($_POST['product_id'])) {
    $product_id = $_POST['product_id'];
    $quantity = intval($_POST['quantity'] ?? 1);

    if (isset($_SESSION['cart'][$product_id])) {
        $_SESSION['cart'][$product_id] += $quantity;
    } else {
        $_SESSION['cart'][$product_id] = $quantity;
    }
}

// Handle remove from cart
if (isset($_POST['remove_id'])) {
    $remove_id = $_POST['remove_id'];
    unset($_SESSION['cart'][$remove_id]);
}

// Handle update quantity in cart
if (isset($_POST['update_id'])) {
    $update_id = $_POST['update_id'];
    $new_quantity = intval($_POST['quantity']);
    if ($new_quantity > 0) {
        $_SESSION['cart'][$update_id] = $new_quantity;
    } else {
        unset($_SESSION['cart'][$update_id]);
    }
}

// Checkout process
$order_success = false;
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['place_order'])) {
    $customer_name = $_POST['name'] ?? '';
    $customer_email = $_POST['email'] ?? '';
    $customer_address = $_POST['address'] ?? '';
    $payment_method = $_POST['payment_method'] ?? '';

    // Validate required fields
    if ($customer_name && $customer_email && $customer_address && $payment_method) {
        // Insert customer into database
        $stmt = $conn->prepare("INSERT INTO customers (name, email, address) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $customer_name, $customer_email, $customer_address);
        $stmt->execute();
        $customer_id = $conn->insert_id;

        $total_price = 0;
        foreach ($_SESSION['cart'] as $product_id => $quantity) {
            $stmt = $conn->prepare("SELECT price FROM products WHERE id = ?");
            $stmt->bind_param("i", $product_id);
            $stmt->execute();
            $result = $stmt->get_result();
            if ($product = $result->fetch_assoc()) {
                $price = floatval($product['price']);
                $quantity = intval($quantity);
                $total_price += $price * $quantity;
            }
        }

        $stmt = $conn->prepare("INSERT INTO orders (customer_id, order_date, total_price) VALUES (?, NOW(), ?)");
        $stmt->bind_param("id", $customer_id, $total_price);
        $stmt->execute();

        // After inserting the order into the orders table
        $order_id = $conn->insert_id;

        // Insert receipt details
        $stmt = $conn->prepare("INSERT INTO receipts (order_id, total_price, payment_method) VALUES (?, ?, ?)");
        $stmt->bind_param("ids", $order_id, $total_price, $payment_method);
        $stmt->execute();

        unset($_SESSION['cart']);
        $order_success = true;
    } else {
        $error_message = "Please fill in all required fields.";
    }
}

// Fetch products from database
$search_query = isset($_GET['search']) ? $_GET['search'] : '';
$sql = "SELECT * FROM products" . ($search_query ? " WHERE name LIKE ?" : '');
$stmt = $conn->prepare($sql);
if ($search_query) {
    $like_search_query = "%" . $search_query . "%";
    $stmt->bind_param("s", $like_search_query);
}
$stmt->execute();
$result = $stmt->get_result();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sari Sari Store</title>
    <style>
        /* Existing CSS code */
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Sari Sari Store</h1>
            <form method="GET" action="" class="search-bar">
                <input type="text" name="search" placeholder="Search for products...">
                <button type="submit">Search</button>
            </form>
        </div>

        <div class="main-content">
            <div class="products">
                <h2>Products</h2>
                <!-- Each product now has its own form -->
                <?php
                if ($result && $result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                ?>
                <div class='product'>
                    <h3><?php echo htmlspecialchars($row['name']); ?></h3>
                    <p>Price: $<?php echo number_format($row['price'], 2); ?></p>
                    <img src='<?php echo htmlspecialchars($row['image_url']); ?>' alt='<?php echo htmlspecialchars($row['name']); ?>'>
                    <form method='POST'>
                        <input type='hidden' name='product_id' value='<?php echo $row['id']; ?>'>
                        <input type='number' name='quantity' value='1' min='1'>
                        <button type='submit'>Add to Cart</button>
                    </form>
                </div>
                <?php
                    }
                } else {
                    echo "<p>No products found.</p>";
                }
                ?>
            </div>

            <div class="cart">
                <h2>Cart</h2>
                <?php if (empty($_SESSION['cart'])): ?>
                    <p>Your cart is empty.</p>
                <?php else: ?>
                    <?php 
                    $total_price = 0;
                    foreach ($_SESSION['cart'] as $product_id => $quantity):
                        $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
                        $stmt->bind_param("i", $product_id);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        if ($product = $result->fetch_assoc()) {
                            $price = floatval($product['price']);
                            $total_price += $price * $quantity;
                    ?>
                        <div class="cart-item">
                            <span><?php echo htmlspecialchars($product['name']); ?> (x<?php echo $quantity; ?>)</span>
                            <form method="POST" style="display:inline;">
                                <input type="hidden" name="remove_id" value="<?php echo $product_id; ?>">
                                <button type="submit" style="background-color: red;">Remove</button>
                            </form>
                            <form method="POST" style="display:inline;">
                                <input type="number" name="quantity" value="<?php echo $quantity; ?>" min="1" style="width: 50px;">
                                <input type="hidden" name="update_id" value="<?php echo $product_id; ?>">
                                <button type="submit">Update</button>
                            </form>
                        </div>
                    <?php
                        }
                    endforeach; ?>
                    <h3>Total: $<?php echo number_format($total_price, 2); ?></h3>
                    <form method="POST">
                        <button type="submit" name="checkout">Checkout</button>
                    </form>
                <?php endif; ?>
            </div>
        </div>

        <!-- Review and Checkout Process -->
        <?php if (isset($_POST['checkout']) && !empty($_SESSION['cart'])): ?>
            <h2>Review Your Order</h2>
            <form method="POST">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <input type="text" name="address" placeholder="Your Address" required>
                <h3>Order Summary:</h3>
                <div class="cart">
                    <?php 
                    $total_price = 0;
                    foreach ($_SESSION['cart'] as $product_id => $quantity):
                        $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
                        $stmt->bind_param("i", $product_id);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        if ($product = $result->fetch_assoc()) {
                            $price = floatval($product['price']);
                            $total_price += $price * $quantity;
                    ?>
                        <div class="cart-item">
                            <span><?php echo htmlspecialchars($product['name']); ?> (x<?php echo $quantity; ?>)</span>
                        </div>
                    <?php
                        }
                    endforeach; ?>
                    <h3>Total: $<?php echo number_format($total_price, 2); ?></h3>
                </div>
                <h4>Select Payment Method:</h4>
                <select name="payment_method" required>
                    <option value="">Select a method</option>
                    <option value="paypal">PayPal</option>
                    <option value="credit_card">Credit Card</option>
                    <option value="cash">Cash on Delivery</option>
                </select>
                <button type="submit" name="place_order">Place Order</button>
            </form>
        <?php endif; ?>

        <!-- Order success message -->
        <?php if ($order_success): ?>
            <p>Order placed successfully!</p>
        <?php elseif (isset($error_message)): ?>
            <p><?php echo $error_message; ?></p>
        <?php endif; ?>
    </div>
</body>
</html>




<?php
$conn->close();
?>
