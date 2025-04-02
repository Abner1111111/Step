<?php
include('dbconnection.php');

// Check if notifications table exists before proceeding
$table_exists = mysqli_query($conn, "SHOW TABLES LIKE 'notifications'");
if(mysqli_num_rows($table_exists) == 0) {
    // Table doesn't exist yet, exit silently
    return;
}

// Check if the required columns exist in the notifications table
$recipient_type_exists = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'recipient_type'");
$recipient_id_exists = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'recipient_id'");

$has_recipient_columns = (mysqli_num_rows($recipient_type_exists) > 0 && mysqli_num_rows($recipient_id_exists) > 0);

// Get user data if available
$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : 0;
$user_type = isset($_SESSION['usertype']) ? $_SESSION['usertype'] : '';

// Map usertype to recipient_type for notifications
$recipient_type = 'all';
if($user_type == 1) $recipient_type = 'admin';
elseif($user_type == 2) $recipient_type = 'staff';
elseif($user_type == 3) $recipient_type = 'instructor';
elseif($user_type == 5) $recipient_type = 'student';

// Get all unread notifications for this user
if($has_recipient_columns) {
    // Use recipient_type and recipient_id in the query
    $notification_query = "SELECT * FROM notifications 
                        WHERE status = 'unread' 
                        AND (recipient_type = 'all' OR recipient_type = '$recipient_type' OR (recipient_type = '$recipient_type' AND recipient_id = $user_id))
                        ORDER BY created_at DESC LIMIT 5";
} else {
    // Use basic query
    $notification_query = "SELECT * FROM notifications 
                        WHERE status = 'unread' 
                        ORDER BY created_at DESC LIMIT 5";
}

$notifications = mysqli_query($conn, $notification_query);

// Display each notification
if($notifications && mysqli_num_rows($notifications) > 0) {
    while($notif = mysqli_fetch_assoc($notifications)) {
        $message = $notif['message'];
        $created_at = date('M d, Y h:i A', strtotime($notif['created_at']));
        $notif_id = $notif['id'];
        
        // If notification is about evaluation, add special styling
        $is_evaluation = (strpos($message, 'evaluation period') !== false);
        $notif_class = $is_evaluation ? 'alert-info' : 'alert-secondary';
        
        echo '<div class="alert '.$notif_class.' alert-dismissible fade show mb-3" role="alert">
                <div class="d-flex justify-content-between align-items-center">
                    <div>'.$message.'</div>
                    <small class="text-muted ms-3">'.$created_at.'</small>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" onclick="markAsRead('.$notif_id.')"></button>
              </div>';
    }
} else {
    // If no notifications, don't display anything
}
?>

<script>
// Function to mark notification as read
function markAsRead(notifId) {
    fetch('backend_scripts/mark_notification_read.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'id=' + notifId
    })
    .then(response => response.text())
    .then(data => {
        console.log('Notification marked as read:', data);
    })
    .catch(error => {
        console.error('Error marking notification as read:', error);
    });
}
</script>