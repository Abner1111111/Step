<?php
// Script to create a default admin user
include('dbconnection.php');
include('activity_logs.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = isset($_POST['admin_email']) ? $_POST['admin_email'] : 'admin@example.com';
    $password = isset($_POST['admin_password']) ? $_POST['admin_password'] : 'admin123';
    
    // Check if the email already exists
    $check_query = "SELECT id FROM step_users WHERE email = ?";
    $stmt = $conn->prepare($check_query);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        echo "<p style='color:orange'>An account with this email already exists.</p>";
    } else {
        // Create new admin user
        $hashed_password = md5($password);
        $firstname = "System";
        $lastname = "Administrator";
        $usertype = 1; // Admin user type
        
        $insert_query = "INSERT INTO step_users (email, password, firstname, lastname, usertype) 
                         VALUES (?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($insert_query);
        $stmt->bind_param("ssssi", $email, $hashed_password, $firstname, $lastname, $usertype);
        
        if ($stmt->execute()) {
            $user_id = $stmt->insert_id;
            
            // Log the activity
            log_activity($conn, $user_id, 'New Admin', 'Default admin account created', 'Authentication');
            
            echo "<p style='color:green'>Admin user created successfully!</p>";
            echo "<p>Email: $email</p>";
            echo "<p>Password: $password</p>";
            echo "<p>Please login <a href='index.php'>here</a>.</p>";
        } else {
            echo "<p style='color:red'>Error creating admin user: " . $stmt->error . "</p>";
        }
    }
}
?> 