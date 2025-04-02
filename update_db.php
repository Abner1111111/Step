<?php
include('dbconnection.php');

echo "<h2>Updating Notifications Table</h2>";

// Check if the notifications table exists
$table_exists = mysqli_query($conn, "SHOW TABLES LIKE 'notifications'");
if(mysqli_num_rows($table_exists) == 0) {
    // Create notifications table if it doesn't exist
    $create_table = mysqli_query($conn, "CREATE TABLE `notifications` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `message` text NOT NULL,
        `added_by` varchar(255) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `status` enum('unread','read') DEFAULT 'unread',
        `recipient_type` enum('all','student','instructor','admin','staff') DEFAULT 'all',
        `recipient_id` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci");
    
    if($create_table) {
        echo "Created notifications table successfully<br>";
    } else {
        echo "Error creating notifications table: " . mysqli_error($conn) . "<br>";
    }
} else {
    // Table exists, check/add columns
    
    // Check if the recipient_type column already exists
    $check_column = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'recipient_type'");
    if(mysqli_num_rows($check_column) == 0) {
        // Add recipient_type column
        $add_recipient_type = mysqli_query($conn, "ALTER TABLE notifications ADD COLUMN recipient_type ENUM('all','student','instructor','admin','staff') DEFAULT 'all'");
        
        if($add_recipient_type) {
            echo "Added recipient_type column successfully<br>";
        } else {
            echo "Error adding recipient_type column: " . mysqli_error($conn) . "<br>";
        }
    } else {
        echo "recipient_type column already exists<br>";
    }
    
    // Check if the recipient_id column already exists
    $check_column = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'recipient_id'");
    if(mysqli_num_rows($check_column) == 0) {
        // Add recipient_id column
        $add_recipient_id = mysqli_query($conn, "ALTER TABLE notifications ADD COLUMN recipient_id INT(11) DEFAULT NULL");
        
        if($add_recipient_id) {
            echo "Added recipient_id column successfully<br>";
        } else {
            echo "Error adding recipient_id column: " . mysqli_error($conn) . "<br>";
        }
    } else {
        echo "recipient_id column already exists<br>";
    }
    
    // Ensure the id column is auto_increment
    $check_id = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'id'");
    if(mysqli_num_rows($check_id) > 0) {
        $id_column = mysqli_fetch_assoc($check_id);
        if(strpos($id_column['Extra'], 'auto_increment') === false) {
            $modify_id = mysqli_query($conn, "ALTER TABLE notifications MODIFY COLUMN id INT(11) NOT NULL AUTO_INCREMENT");
            
            if($modify_id) {
                echo "Modified id column to AUTO_INCREMENT successfully<br>";
            } else {
                echo "Error modifying id column: " . mysqli_error($conn) . "<br>";
            }
        }
    }
}

// Check if created_at column exists in academic_year
$check_created_at = mysqli_query($conn, "SHOW COLUMNS FROM academic_year LIKE 'created_at'");
if(mysqli_num_rows($check_created_at) == 0) {
    // Add created_at column if it doesn't exist
    $add_created_at = mysqli_query($conn, "ALTER TABLE academic_year ADD COLUMN created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP");
    
    if($add_created_at) {
        echo "Added created_at column to academic_year table successfully<br>";
    } else {
        echo "Error adding created_at column to academic_year: " . mysqli_error($conn) . "<br>";
    }
} else {
    echo "created_at column already exists in academic_year table<br>";
}

echo "<p>Database update completed.</p>";
echo "<p><a href='index.php'>Return to homepage</a></p>";
?> 