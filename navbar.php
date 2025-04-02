<?php
  $full = $_SESSION['fullname'];
  
  // Get current academic year and check evaluation status
  $current_acad_query = mysqli_query($conn, "SELECT * FROM academic_year ORDER BY id DESC LIMIT 1");
  $eval_notification = "";
  $has_notification = false;
  $evaluation_start_date = "Not set";
  $evaluation_end_date = "Not set";
  
  if(mysqli_num_rows($current_acad_query) > 0) {
    $current_acad = mysqli_fetch_assoc($current_acad_query);
    $acad_year = $current_acad['acad_year'];
    $semester = $current_acad['semester'];
    $evaluation_status = isset($current_acad['evaluation_status']) ? $current_acad['evaluation_status'] : 0;
    
    // Store evaluation dates for dropdown
    if(isset($current_acad['evaluation_start_date']) && !empty($current_acad['evaluation_start_date'])) {
      $evaluation_start_date = date('F d, Y', strtotime($current_acad['evaluation_start_date']));
    }
    
    if(isset($current_acad['evaluation_end_date']) && !empty($current_acad['evaluation_end_date'])) {
      $evaluation_end_date = date('F d, Y', strtotime($current_acad['evaluation_end_date']));
    }
    
    // Calculate days remaining if evaluation end date exists
    $days_remaining = "";
    if(isset($current_acad['evaluation_end_date']) && !empty($current_acad['evaluation_end_date'])) {
      $end_date = new DateTime($current_acad['evaluation_end_date']);
      $today = new DateTime();
      $interval = $today->diff($end_date);
      
      if($interval->days > 0 && $interval->invert == 0) {
        $days_remaining = " - " . $interval->days . " day(s) remaining";
      } else if($interval->invert == 1) {
        $days_remaining = " - Ends today!";
      }
    }
    
    // Create notification based on evaluation status
    if($evaluation_status == 1) {
      $eval_notification = "<div class='alert alert-success mb-0 text-center py-1'><strong>Evaluation Period is OPEN</strong> for {$acad_year} - {$semester}{$days_remaining}</div>";
      $has_notification = true;
    } else if(isset($current_acad['evaluation_start_date']) && !empty($current_acad['evaluation_start_date'])) {
      $start_date = new DateTime($current_acad['evaluation_start_date']);
      $today = new DateTime();
      $interval = $today->diff($start_date);
      
      if($interval->days <= 7 && $interval->invert == 0) {
        $eval_notification = "<div class='alert alert-warning mb-0 text-center py-1'><strong>Evaluation Period starts in {$interval->days} day(s)</strong> for {$acad_year} - {$semester}</div>";
        $has_notification = true;
      }
    }
  }
  
  // Get unread notifications count
  $unread_count = 0;
  $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : 0;
  $user_type = isset($_SESSION['usertype']) ? $_SESSION['usertype'] : '';
  
  // Map usertype to recipient_type for notifications
  $recipient_type = 'all';
  if($user_type == 1) $recipient_type = 'admin';
  elseif($user_type == 2) $recipient_type = 'staff';
  elseif($user_type == 3) $recipient_type = 'instructor';
  elseif($user_type == 5) $recipient_type = 'student';
  
  // Check if notifications table exists before querying
  $table_exists = mysqli_query($conn, "SHOW TABLES LIKE 'notifications'");
  if(mysqli_num_rows($table_exists) > 0) {
    // Check if recipient_type column exists
    $recipient_type_exists = mysqli_query($conn, "SHOW COLUMNS FROM notifications LIKE 'recipient_type'");
    $has_recipient_columns = mysqli_num_rows($recipient_type_exists) > 0;
    
    if($has_recipient_columns) {
      $count_query = "SELECT COUNT(*) as unread FROM notifications 
                      WHERE status = 'unread' 
                      AND (recipient_type = 'all' OR recipient_type = '$recipient_type' OR (recipient_type = '$recipient_type' AND recipient_id = $user_id))";
    } else {
      $count_query = "SELECT COUNT(*) as unread FROM notifications WHERE status = 'unread'";
    }
    
    $result = mysqli_query($conn, $count_query);
    if($result && mysqli_num_rows($result) > 0) {
      $row = mysqli_fetch_assoc($result);
      $unread_count = $row['unread'];
    }
  }
?>
<div class="header navbar">
  <?php if($has_notification): ?>
  <div class="evaluation-notification w-100">
    <?php echo $eval_notification; ?>
  </div>
  <?php endif; ?>
  <div class="header-container">
    <ul class="nav-left">
      <li>
        <a id="sidebar-toggle" class="sidebar-toggle" href="javascript:void(0);">
          <i class="fas fa-bars"></i>
        </a>
      </li>
      <li>
        <div class="page-title d-none d-md-block">
          <?php
            // Get current page name
            $currentPage = basename($_SERVER['PHP_SELF']);
            $pageName = '';
            
            switch($currentPage) {
              case 'departments.php':
                $pageName = 'Departments';
                break;
              case 'manage_student.php':
                $pageName = 'Student Management';
                break;
              case 'view_instructors.php':
                $pageName = 'Faculty Members';
                break;
              case 'manage_user.php':
                $pageName = 'User Management';
                break;
              case 'academic_year.php':
                $pageName = 'Academic Year';
                break;
              case 'activity_logs.php':
                $pageName = 'Activity Logs';
                break;
              case 'categories.php':
                $pageName = 'Student Questionnaire Categories';
                break;
              case 'questionaires.php':
                $pageName = 'Student Questionnaires';
                break;
              case 'p2p_categories.php':
                $pageName = 'Peer Questionnaire Categories';
                break;
              case 'p2p_questionaires.php':
                $pageName = 'Peer Questionnaires';
                break;
              default:
                $pageName = 'Dashboard';
            }
            
            echo $pageName;
          ?>
        </div>
      </li>
    </ul>
    <ul class="nav-right">
      <!-- Notifications Dropdown -->
      <li class="dropdown me-3">
        <a href="javascript:void(0);" class="dropdown-toggle no-after position-relative" id="notificationsDropdown" data-bs-toggle="dropdown" aria-expanded="false">
          <i class="fas fa-bell" style="font-size: 1.2rem;"></i>
          <?php if($unread_count > 0): ?>
          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
            <?php echo $unread_count > 9 ? '9+' : $unread_count; ?>
          </span>
          <?php endif; ?>
        </a>
        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationsDropdown" style="width: 340px; max-height: 500px; overflow-y: auto;">
          <div class="dropdown-header d-flex justify-content-between align-items-center">
            <span class="fw-bold text-muted">Notifications</span>
            <?php if($unread_count > 0): ?>
            <a href="javascript:void(0);" onclick="markAllAsRead()" class="text-decoration-none text-primary small">Mark all as read</a>
            <?php endif; ?>
          </div>
          <div class="dropdown-divider"></div>
          
          <!-- Evaluation Period Info Card -->
          <div class="p-3">
            <div class="card border-0 shadow-sm">
              <div class="card-header bg-light">
                <i class="fas fa-calendar-alt me-1"></i> Evaluation Period
              </div>
              <div class="card-body p-3">
                <div class="d-flex justify-content-between mb-2">
                  <span class="text-muted">Status:</span>
                  <span class="fw-bold <?php echo $evaluation_status == 1 ? 'text-success' : 'text-secondary'; ?>">
                    <?php echo $evaluation_status == 1 ? 'ACTIVE' : 'INACTIVE'; ?>
                  </span>
                </div>
                <div class="d-flex justify-content-between mb-2">
                  <span class="text-muted">Start Date:</span>
                  <span class="fw-semibold"><?php echo $evaluation_start_date; ?></span>
                </div>
                <div class="d-flex justify-content-between mb-2">
                  <span class="text-muted">End Date:</span>
                  <span class="fw-semibold"><?php echo $evaluation_end_date; ?></span>
                </div>
                <div class="d-flex justify-content-between">
                  <span class="text-muted">Academic Year:</span>
                  <span class="fw-semibold"><?php echo isset($acad_year) ? $acad_year . ' - ' . $semester : 'Not set'; ?></span>
                </div>
              </div>
            </div>
          </div>
          
          <div class="dropdown-divider"></div>
          
          <!-- Regular Notifications -->
          <div class="notifications-container p-0">
            <?php 
            // Check if notifications table exists and has rows
            if(mysqli_num_rows($table_exists) > 0) {
              if($has_recipient_columns) {
                $notif_query = "SELECT * FROM notifications 
                              WHERE (recipient_type = 'all' OR recipient_type = '$recipient_type' OR (recipient_type = '$recipient_type' AND recipient_id = $user_id))
                              ORDER BY created_at DESC LIMIT 5";
              } else {
                $notif_query = "SELECT * FROM notifications ORDER BY created_at DESC LIMIT 5";
              }
              
              $notif_result = mysqli_query($conn, $notif_query);
              if($notif_result && mysqli_num_rows($notif_result) > 0) {
                while($notification = mysqli_fetch_assoc($notif_result)) {
                  $is_unread = $notification['status'] == 'unread';
                  $is_evaluation = strpos($notification['message'], 'evaluation period') !== false;
                  
                  echo '<a class="dropdown-item py-3 px-4 '.($is_unread ? 'bg-light' : '').'" href="javascript:void(0);" onclick="markNotificationRead('.$notification['id'].')">';
                  echo '<div class="d-flex">';
                  echo '<div class="me-3">';
                  echo '<i class="fas '.($is_evaluation ? 'fa-calendar-check text-info' : 'fa-bell text-primary').'" style="font-size: 1.1rem;"></i>';
                  echo '</div>';
                  echo '<div>';
                  echo '<p class="mb-1 '.($is_unread ? 'fw-bold' : '').'" style="line-height: 1.3;">'.$notification['message'].'</p>';
                  echo '<small class="text-muted">'.date('M d, Y h:i A', strtotime($notification['created_at'])).'</small>';
                  echo '</div>';
                  echo '</div>';
                  echo '</a>';
                }
              } else {
                echo '<div class="dropdown-item text-center py-3">No notifications</div>';
              }
            } else {
              echo '<div class="dropdown-item text-center py-3">No notifications</div>';
            }
            ?>
          </div>
        </div>
      </li>
      
      <li class="dropdown">
        <a href="" class="dropdown-toggle no-after peers fxw-nw ai-c lh-1" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
          <div class="peer mR-10">
            <i class="fas fa-user-circle"></i>
          </div>
          <div class="peer">
            <span class="fsz-sm c-grey-900"><?php echo $full; ?></span>
          </div>
        </a>
        <ul class="dropdown-menu fsz-sm" aria-labelledby="dropdownMenuLink">
          <li>
            <a href="../backend_scripts/logout.php" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700">
              <i class="fas fa-sign-out-alt mR-10"></i>
              <span>Logout</span>
            </a>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</div>

<style>
.evaluation-notification {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: var(--notification-height);
  z-index: 1025;
}

.header {
  padding-top: <?php echo $has_notification ? '30px' : '0'; ?>;
  height: <?php echo $has_notification ? '90px' : '60px'; ?>;
  background-color: white;
  border-bottom: 1px solid var(--border-color);
  box-shadow: var(--box-shadow);
}

.header-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 100%;
  padding: 0 1.5rem;
}

.nav-left, .nav-right {
  display: flex;
  align-items: center;
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav-left li, .nav-right li {
  margin: 0 0.75rem;
}

.sidebar-toggle {
  color: var(--text-muted);
  font-size: 1.25rem;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0.5rem;
  border-radius: 0.25rem;
  transition: all 0.2s ease;
}

.sidebar-toggle:hover {
  background-color: var(--primary-light);
  color: var(--primary-color);
}

.page-title {
  font-size: 1.25rem;
  font-weight: 600;
  color: var(--text-color);
}

.dropdown-toggle {
  display: flex;
  align-items: center;
  padding: 0.5rem;
  border-radius: 0.25rem;
  transition: all 0.2s ease;
}

.dropdown-toggle:hover {
  background-color: var(--primary-light);
  color: var(--primary-color);
}

.dropdown-toggle .peer i {
  font-size: 1.25rem;
  color: var(--primary-color);
}

.dropdown-menu {
  min-width: 10rem;
  padding: 0.5rem 0;
  border: 1px solid var(--border-color);
  border-radius: var(--border-radius);
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  margin-top: 0.5rem;
}

.dropdown-menu a {
  padding: 0.5rem 1rem;
  display: flex;
  align-items: center;
  transition: all 0.2s ease;
  color: var(--text-color);
  text-decoration: none;
}

.dropdown-menu a:hover {
  background-color: var(--primary-light);
  color: var(--primary-color);
}

.dropdown-menu a i {
  margin-right: 0.5rem;
  font-size: 0.875rem;
  width: 16px;
  text-align: center;
  color: var(--primary-color);
}

.alert {
  margin-bottom: 0;
  padding: 0.5rem 1rem;
  border: none;
  font-size: 0.875rem;
}

.alert-success {
  background-color: rgba(34, 197, 94, 0.1);
  color: #22c55e;
}

.alert-warning {
  background-color: rgba(245, 158, 11, 0.1);
  color: #f59e0b;
}

/* Notification styles */
.dropdown-menu {
  box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
  border: none;
  border-radius: 0.5rem;
}

.dropdown-header {
  font-size: 0.875rem;
  padding: 0.8rem 1.25rem;
}

.dropdown-item {
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  transition: all 0.2s;
}

.dropdown-item:last-child {
  border-bottom: none;
}

.dropdown-item:hover {
  background-color: rgba(0, 0, 0, 0.03);
}

.badge {
  font-size: 0.65rem;
  padding: 0.35em 0.5em;
}
</style>

<script>
// Function to mark notification as read
function markNotificationRead(notifId) {
  fetch('../backend_scripts/mark_notification_read.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: 'id=' + notifId
  })
  .then(response => response.text())
  .then(data => {
    console.log('Notification marked as read:', data);
    // Refresh the notifications display
    location.reload();
  })
  .catch(error => {
    console.error('Error marking notification as read:', error);
  });
}

// Function to mark all notifications as read
function markAllAsRead() {
  fetch('../backend_scripts/mark_all_notifications_read.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: 'user_type=<?php echo $recipient_type; ?>&user_id=<?php echo $user_id; ?>'
  })
  .then(response => response.text())
  .then(data => {
    console.log('All notifications marked as read:', data);
    // Refresh the notifications display
    location.reload();
  })
  .catch(error => {
    console.error('Error marking all notifications as read:', error);
  });
}
</script>