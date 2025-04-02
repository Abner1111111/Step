<?php
/**
 * Activity Logging System for SEATSTEP
 */

// Check if function already exists before declaring it
if (!function_exists('log_activity')) {
    function log_activity($conn, $user_id, $action, $description, $module, $ip_address = null) {
        // Get the current date and time
        $timestamp = date('Y-m-d H:i:s');
        
        // Get IP address if not provided
        if($ip_address === null) {
            $ip_address = $_SERVER['REMOTE_ADDR'] ?? '0.0.0.0';
        }
        
        // Sanitize inputs to prevent SQL injection
        $user_id = intval($user_id);
        $action = mysqli_real_escape_string($conn, $action);
        $description = mysqli_real_escape_string($conn, $description);
        $module = mysqli_real_escape_string($conn, $module);
        $ip_address = mysqli_real_escape_string($conn, $ip_address);
        
        // Create activity_logs table if it doesn't exist
        $create_table_query = "CREATE TABLE IF NOT EXISTS activity_logs (
            id INT(11) NOT NULL AUTO_INCREMENT,
            user_id INT(11) NOT NULL,
            action VARCHAR(255) NOT NULL,
            description TEXT,
            module VARCHAR(100) NOT NULL,
            ip_address VARCHAR(45) NOT NULL,
            timestamp DATETIME NOT NULL,
            PRIMARY KEY (id)
        )";
        
        mysqli_query($conn, $create_table_query);
        
        // Insert the log entry
        $query = "INSERT INTO activity_logs (user_id, action, description, module, ip_address, timestamp) 
                VALUES ($user_id, '$action', '$description', '$module', '$ip_address', '$timestamp')";
        
        return mysqli_query($conn, $query);
    }
}
?> 