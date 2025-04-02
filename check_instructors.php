<?php
include('dbconnection.php');

// List all instructor accounts
$query = "SELECT * FROM step_users WHERE usertype = 3 OR usertype = 5";
$result = mysqli_query($conn, $query);

echo "Listing all instructor accounts in the database:\n";
if(mysqli_num_rows($result) > 0) {
    echo "Found " . mysqli_num_rows($result) . " instructor accounts:\n";
    while($user = mysqli_fetch_assoc($result)) {
        echo "ID: " . $user['id'] . "\n";
        echo "Email: " . $user['email'] . "\n";
        echo "User Type: " . $user['usertype'] . "\n";
        echo "First Name: " . $user['firstname'] . "\n";
        echo "Last Name: " . $user['lastname'] . "\n";
        echo "---\n";
    }
} else {
    echo "No instructor accounts found.\n";
}

// Also check accounts with instructor in the email
$query = "SELECT * FROM step_users WHERE email LIKE '%instructor%'";
$result = mysqli_query($conn, $query);

echo "\nChecking for accounts with 'instructor' in email:\n";
if(mysqli_num_rows($result) > 0) {
    echo "Found " . mysqli_num_rows($result) . " accounts:\n";
    while($user = mysqli_fetch_assoc($result)) {
        echo "ID: " . $user['id'] . "\n";
        echo "Email: " . $user['email'] . "\n";
        echo "User Type: " . $user['usertype'] . "\n";
        echo "---\n";
    }
} else {
    echo "No accounts with 'instructor' in email found.\n";
}

// Check if the specific instructor account exists
$email = 'instructor.test4@seait-edu.ph';
$query = "SELECT * FROM step_users WHERE email = '$email'";
$result = mysqli_query($conn, $query);

echo "\nChecking for specific instructor account ($email):\n";
if(mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    echo "Found account:\n";
    echo "ID: " . $user['id'] . "\n";
    echo "Email: " . $user['email'] . "\n";
    echo "User Type: " . $user['usertype'] . "\n";
} else {
    echo "Account not found.\n";
}
?> 