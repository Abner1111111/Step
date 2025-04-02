<?php
include('dbconnection.php');

// Instructor details
$email = 'instructor.test4@seait-edu.ph';
$password = 'Seait123';
$hashed_password = md5($password);
$firstname = 'Instructor';
$lastname = 'Test';
$school_id = 'INSTR4';
$status = 1; // Active

// Check if account already exists
$check_query = "SELECT * FROM basic_info WHERE email = '$email'";
$check_result = mysqli_query($conn, $check_query);

if(mysqli_num_rows($check_result) > 0) {
    echo "Instructor account already exists in basic_info table! Updating...\n";
    
    // Update password to make sure it's correct
    $update_pass_query = "UPDATE basic_info SET password = '$hashed_password', status = $status WHERE email = '$email'";
    if(mysqli_query($conn, $update_pass_query)) {
        echo "Updated password and status successfully!\n";
    } else {
        echo "Error updating password: " . mysqli_error($conn) . "\n";
    }
} else {
    echo "Creating new instructor account in basic_info table...\n";
    
    // Insert new instructor account
    $insert_query = "INSERT INTO basic_info (school_id, lastname, firstname, email, password, status) 
                    VALUES ('$school_id', '$lastname', '$firstname', '$email', '$hashed_password', $status)";
    
    if(mysqli_query($conn, $insert_query)) {
        echo "Instructor account created successfully in basic_info table!\n";
    } else {
        echo "Error creating instructor account: " . mysqli_error($conn) . "\n";
    }
}

echo "\nInstructor login credentials:\n";
echo "Email: $email\n";
echo "Password: $password\n";
echo "Password Hash: $hashed_password\n";

// We need to check if there's a user_role table to associate this user as an instructor
$check_table_query = "SHOW TABLES LIKE 'user_role'";
$table_result = mysqli_query($conn, $check_table_query);

if(mysqli_num_rows($table_result) > 0) {
    echo "\nChecking user_role table...\n";
    
    // Get the user ID from basic_info
    $user_query = "SELECT id FROM basic_info WHERE email = '$email'";
    $user_result = mysqli_query($conn, $user_query);
    
    if(mysqli_num_rows($user_result) > 0) {
        $user = mysqli_fetch_assoc($user_result);
        $user_id = $user['id'];
        
        // Check if user already has an instructor role
        $role_check = "SELECT * FROM user_role WHERE user_id = '$user_id' AND role = 'instructor'";
        $role_result = mysqli_query($conn, $role_check);
        
        if(mysqli_num_rows($role_result) > 0) {
            echo "User already has instructor role.\n";
        } else {
            // Add instructor role
            $role_insert = "INSERT INTO user_role (user_id, role) VALUES ('$user_id', 'instructor')";
            if(mysqli_query($conn, $role_insert)) {
                echo "Added instructor role successfully!\n";
            } else {
                echo "Error adding instructor role: " . mysqli_error($conn) . "\n";
            }
        }
    }
}
?> 