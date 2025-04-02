<?php
include('dbconnection.php');

// List all records from basic_info
$query = "SELECT * FROM basic_info WHERE email LIKE '%instructor%'";
$result = mysqli_query($conn, $query);

echo "Listing all instructor records from basic_info table:\n";
if(mysqli_num_rows($result) > 0) {
    echo "Found " . mysqli_num_rows($result) . " instructor records:\n";
    while($user = mysqli_fetch_assoc($result)) {
        echo "ID: " . $user['id'] . "\n";
        echo "School ID: " . $user['school_id'] . "\n";
        echo "Name: " . $user['firstname'] . " " . $user['lastname'] . "\n";
        echo "Email: " . $user['email'] . "\n";
        echo "Status: " . $user['status'] . "\n";
        echo "---\n";
    }
} else {
    echo "No instructor records found in basic_info table.\n";
}

// Check if the specific instructor account exists
$email = 'instructor.test4@seait-edu.ph';
$query = "SELECT * FROM basic_info WHERE email = '$email'";
$result = mysqli_query($conn, $query);

echo "\nChecking for specific instructor account ($email) in basic_info table:\n";
if(mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    echo "Found account:\n";
    echo "ID: " . $user['id'] . "\n";
    echo "School ID: " . $user['school_id'] . "\n";
    echo "Name: " . $user['firstname'] . " " . $user['lastname'] . "\n";
    echo "Email: " . $user['email'] . "\n";
} else {
    echo "Account not found in basic_info table.\n";
}

// Check all instructor emails
$query = "SELECT * FROM basic_info WHERE email LIKE '%@seait-edu.ph'";
$result = mysqli_query($conn, $query);

echo "\nListing all accounts with @seait-edu.ph domain:\n";
if(mysqli_num_rows($result) > 0) {
    echo "Found " . mysqli_num_rows($result) . " accounts:\n";
    while($user = mysqli_fetch_assoc($result)) {
        echo "ID: " . $user['id'] . "\n";
        echo "Email: " . $user['email'] . "\n";
        echo "---\n";
    }
} else {
    echo "No accounts found with @seait-edu.ph domain.\n";
}
?> 