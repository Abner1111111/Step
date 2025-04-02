<?php
include('dbconnection.php');

// Display header
echo "<h2>Updating Instructor Emails</h2>";

// Get all instructors from the database
$get_instructors = mysqli_query($conn, "SELECT * FROM basic_info 
    LEFT JOIN employment_informations ON employment_informations.id = basic_info.id 
    WHERE position = 'Faculty' OR employment_informations.department IS NOT NULL");

if (!$get_instructors) {
    die("Error querying instructors: " . mysqli_error($conn));
}

$updated_count = 0;
$error_count = 0;

// Process each instructor
while ($instructor = mysqli_fetch_assoc($get_instructors)) {
    $instructor_id = $instructor['id'];
    $lastname = strtolower($instructor['lastname']);
    $current_email = $instructor['email'];
    
    // Generate the new email format
    $new_email = "instructor.{$lastname}@seait-edu.ph";
    
    echo "<p>Instructor: {$instructor['firstname']} {$instructor['lastname']} (ID: {$instructor_id})<br>";
    echo "Current email: {$current_email}<br>";
    echo "New email: {$new_email}</p>";
    
    // Update the email in basic_info table
    $update_basic = mysqli_query($conn, "UPDATE basic_info SET email = '$new_email' WHERE id = $instructor_id");
    
    // Update the email in contact_information table
    $update_contact = mysqli_query($conn, "UPDATE contact_information SET email = '$new_email' WHERE id = $instructor_id");
    
    if ($update_basic && $update_contact) {
        echo "<p style='color: green;'>✓ Successfully updated.</p>";
        $updated_count++;
    } else {
        echo "<p style='color: red;'>✗ Error updating: " . mysqli_error($conn) . "</p>";
        $error_count++;
    }
    
    echo "<hr>";
}

// Display summary
echo "<h3>Summary</h3>";
echo "<p>Total instructors processed: " . ($updated_count + $error_count) . "<br>";
echo "Successfully updated: {$updated_count}<br>";
echo "Errors: {$error_count}</p>";

// Add navigation button
echo "<p><a href='admin/index.php' style='display: inline-block; padding: 10px 15px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 4px;'>Return to Admin Dashboard</a></p>";
?> 