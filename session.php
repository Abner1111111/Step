<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include('dbconnection.php');

// Get the current directory path
$current_path = $_SERVER['PHP_SELF'];
$is_in_subdirectory = strpos($current_path, '/admin/') !== false || 
                      strpos($current_path, '/staff/') !== false || 
                      strpos($current_path, '/heads/') !== false || 
                      strpos($current_path, '/instructor/') !== false || 
                      strpos($current_path, '/student/') !== false;
                      
// Determine the correct path for redirection
$redirect_path = $is_in_subdirectory ? '../index.php' : 'index.php';

if(!isset($_SESSION['id'])) {
    $_SESSION['index_error'] = "You need to login first!";
    header("location: $redirect_path");
    exit();
}

if(!isset($_SESSION['acad_year'])){
  	$_SESSION['index_error'] = "You have been logged out due to inactivity!";
  	header("location: $redirect_path");
  	exit();
}

if(!isset($_SESSION['user_id'])){
  	$_SESSION['index_error'] = "You have been logged out due to inactivity!";
  	header("location: $redirect_path");
  	exit();
}

if(!isset($_SESSION['dept_id'])){
  	$_SESSION['index_error'] = "You have been logged out due to inactivity!";
  	header("location: $redirect_path");
  	exit();
}

if(!isset($_SESSION['usertype'])){
  	$_SESSION['index_error'] = "You have been logged out due to inactivity!";
  	header("location: $redirect_path");
  	exit();
}

// Check if student access is allowed after evaluation period ends
if(isset($_SESSION['usertype']) && $_SESSION['usertype'] == 0 && strpos($current_path, '/student/') !== false) {
    // Get academic year information
    $acad_year_id = $_SESSION['acad_year'];
    $academic_year_query = mysqli_query($conn, "SELECT * FROM academic_year WHERE id = '$acad_year_id'");
    
    if(mysqli_num_rows($academic_year_query) > 0) {
        $acad_data = mysqli_fetch_assoc($academic_year_query);
        
        // Check if evaluation period has ended
        if(isset($acad_data['evaluation_end_date']) && !empty($acad_data['evaluation_end_date'])) {
            $end_date = new DateTime($acad_data['evaluation_end_date']);
            $today = new DateTime();
            if($today > $end_date) {
                $_SESSION['index_error'] = "Student access is disabled after the evaluation period has ended.";
                header("location: $redirect_path");
                session_destroy();
                exit();
            }
        }
    }
}

if(isset($_SESSION['acad_year'])){
	$academic_year = $_SESSION['acad_year'];

}

if(isset($_SESSION['user_id'])){
	$user_id = $_SESSION['user_id'];
}

if(isset($_SESSION['dept_id'])){
	$dept_id = $_SESSION['dept_id'];
}

if(isset($_SESSION['usertype'])){
	$session_usertype = $_SESSION['usertype'];
}

?>







