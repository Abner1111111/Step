<?php
include('dbconnection.php');

$email = 'instructor.test4@seait-edu.ph';

// First try exact match
$query = "SELECT * FROM step_users WHERE email = '$email'";
$result = mysqli_query($conn, $query);

echo "Checking for exact email match...\n";
if(mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    echo "Found user with exact email match:\n";
    echo "ID: " . $user['id'] . "\n";
    echo "Email: " . $user['email'] . "\n";
    echo "User Type: " . $user['usertype'] . "\n";
    echo "Department: " . $user['dept'] . "\n";
    echo "First Name: " . $user['firstname'] . "\n";
    echo "Last Name: " . $user['lastname'] . "\n";
} else {
    echo "No user found with exact email match.\n";
}

// Try case-insensitive match
$query = "SELECT * FROM step_users WHERE LOWER(email) = LOWER('$email')";
$result = mysqli_query($conn, $query);

echo "\nChecking for case-insensitive match...\n";
if(mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    echo "Found user with case-insensitive match:\n";
    echo "ID: " . $user['id'] . "\n";
    echo "Email: " . $user['email'] . "\n";
    echo "User Type: " . $user['usertype'] . "\n";
    echo "Department: " . $user['dept'] . "\n";
    echo "First Name: " . $user['firstname'] . "\n";
    echo "Last Name: " . $user['lastname'] . "\n";
} else {
    echo "No user found with case-insensitive match.\n";
}

// Try partial match to see if there are similar emails
$query = "SELECT * FROM step_users WHERE email LIKE '%$email%'";
$result = mysqli_query($conn, $query);

echo "\nChecking for partial matches...\n";
if(mysqli_num_rows($result) > 0) {
    echo "Found " . mysqli_num_rows($result) . " users with similar emails:\n";
    while($user = mysqli_fetch_assoc($result)) {
        echo "Email: " . $user['email'] . "\n";
        echo "User Type: " . $user['usertype'] . "\n";
        echo "---\n";
    }
} else {
    echo "No users found with similar emails.\n";
}
?> 