<?php
/**
 * This script can be executed manually to check evaluation status and send notifications
 * It can also be set up as a scheduled task (cron job) for automatic execution
 */

// Include required files
include_once('dbconnection.php');
include_once('activity_logs.php');
include_once('backend_scripts/evaluation_notifications.php');

// Log execution
log_activity($conn, 0, 'Manual Check', 'Evaluation notification check script executed manually', 'Notification System');

// Check evaluation status
check_evaluation_status($conn);

// Check upcoming evaluations if function exists
if(function_exists('check_upcoming_evaluations')) {
    check_upcoming_evaluations($conn);
}

// Output success message
echo "Evaluation notification check completed at " . date('Y-m-d H:i:s');
?>