<?php
// Test database connection and login functionality
include('dbconnection.php');

// Test database connection
echo "<h2>Testing Database Connection</h2>";
if ($conn->connect_error) {
    echo "<p style='color:red'>Connection failed: " . $conn->connect_error . "</p>";
} else {
    echo "<p style='color:green'>Database connection successful!</p>";
    
    // Test if tables exist and have data
    $tables = ['step_users', 'basic_info', 'employment_informations', 'academic_year'];
    
    foreach ($tables as $table) {
        $query = "SHOW TABLES LIKE '$table'";
        $result = $conn->query($query);
        
        if ($result->num_rows > 0) {
            echo "<p>Table '$table' exists.</p>";
            
            // Count records
            $count_query = "SELECT COUNT(*) as count FROM $table";
            $count_result = $conn->query($count_query);
            if ($count_result) {
                $count = $count_result->fetch_assoc()['count'];
                echo "<p>Table '$table' has $count records.</p>";
            } else {
                echo "<p style='color:red'>Error counting records in '$table': " . $conn->error . "</p>";
            }
        } else {
            echo "<p style='color:red'>Table '$table' does not exist!</p>";
        }
    }
    
    // Check if we have at least one admin user
    $admin_query = "SELECT COUNT(*) as count FROM step_users WHERE usertype = 1";
    $admin_result = $conn->query($admin_query);
    if ($admin_result) {
        $admin_count = $admin_result->fetch_assoc()['count'];
        echo "<p>Found $admin_count admin users in the system.</p>";
    } else {
        echo "<p style='color:red'>Error checking admin users: " . $conn->error . "</p>";
    }
}
?>

<h2>Login Form Testing</h2>
<form action="backend_scripts/user_login.php" method="POST">
    <label for="email">Username/Email:</label>
    <input type="text" id="email" name="email" required><br><br>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    
    <input type="submit" value="Test Login">
</form>

<h2>Create Default Admin (if needed)</h2>
<form action="create_admin.php" method="POST">
    <label for="admin_email">Admin Email:</label>
    <input type="text" id="admin_email" name="admin_email" value="admin@example.com"><br><br>
    
    <label for="admin_password">Admin Password:</label>
    <input type="password" id="admin_password" name="admin_password" value="admin123"><br><br>
    
    <input type="submit" value="Create Admin">
</form> 