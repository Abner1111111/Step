<?php
include('dbconnection.php');

// Instructor details
$email = 'instructor.test4@seait-edu.ph';
$password = 'Seait123';
$hashed_password = md5($password);
$firstname = 'Instructor';
$lastname = 'Test';
$usertype = 3; // 3 for instructor

// Check if account already exists
$check_query = "SELECT * FROM step_users WHERE email = '$email'";
$check_result = mysqli_query($conn, $check_query);

if(mysqli_num_rows($check_result) > 0) {
    echo "Instructor account already exists! Updating usertype to 3...\n";
    
    // Update usertype to 3 if it's not already
    $user = mysqli_fetch_assoc($check_result);
    if($user['usertype'] != 3) {
        $update_query = "UPDATE step_users SET usertype = 3 WHERE email = '$email'";
        if(mysqli_query($conn, $update_query)) {
            echo "Updated usertype to 3 successfully!\n";
        } else {
            echo "Error updating usertype: " . mysqli_error($conn) . "\n";
        }
    } else {
        echo "Usertype is already set to 3.\n";
    }
    
    // Also update password to make sure it's correct
    $update_pass_query = "UPDATE step_users SET password = '$hashed_password' WHERE email = '$email'";
    if(mysqli_query($conn, $update_pass_query)) {
        echo "Updated password successfully!\n";
    } else {
        echo "Error updating password: " . mysqli_error($conn) . "\n";
    }
} else {
    echo "Creating new instructor account...\n";
    
    // Insert new instructor account
    $insert_query = "INSERT INTO step_users (email, password, firstname, lastname, usertype, dept) 
                    VALUES ('$email', '$hashed_password', '$firstname', '$lastname', $usertype, 0)";
    
    if(mysqli_query($conn, $insert_query)) {
        echo "Instructor account created successfully!\n";
    } else {
        echo "Error creating instructor account: " . mysqli_error($conn) . "\n";
    }
}

echo "\nInstructor login credentials:\n";
echo "Email: $email\n";
echo "Password: $password\n";
echo "Password Hash: $hashed_password\n";
?> 