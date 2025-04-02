<?php
include('dbconnection.php');

$email = 'instructor.test4@seait-edu.ph';
$password = 'Seait123';
$pass = md5($password);

$query = "SELECT * FROM step_users WHERE email = '$email'";
$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    echo "Account found:\n";
    echo "ID: " . $user['id'] . "\n";
    echo "Email: " . $user['email'] . "\n";
    echo "User Type: " . $user['usertype'] . "\n";
    echo "Department: " . $user['dept'] . "\n";
    echo "Password in DB: " . $user['password'] . "\n";
    echo "Provided password hash: " . $pass . "\n";
} else {
    echo "Account not found!";
}
?> 