<?php
// Script to check and fix session-related issues
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

echo "<h1>Session Diagnostic Tool</h1>";

// Check if database connection file exists
if (file_exists('dbconnection.php')) {
    echo "<p>✅ Database connection file exists</p>";
    include('dbconnection.php');
    
    // Test database connection
    if ($conn->connect_error) {
        echo "<p>❌ Database connection failed: " . $conn->connect_error . "</p>";
    } else {
        echo "<p>✅ Database connection successful</p>";
        
        // Check if necessary tables exist
        $tables = ['step_users', 'basic_info', 'employment_informations', 'academic_year'];
        $all_tables_exist = true;
        
        foreach ($tables as $table) {
            $query = "SHOW TABLES LIKE '$table'";
            $result = $conn->query($query);
            
            if ($result->num_rows > 0) {
                echo "<p>✅ Table '$table' exists</p>";
            } else {
                echo "<p>❌ Table '$table' does not exist</p>";
                $all_tables_exist = false;
            }
        }
        
        if ($all_tables_exist) {
            // Check session variables
            echo "<h2>Session Variables</h2>";
            $session_vars = ['id', 'user_id', 'acad_year', 'usertype', 'dept_id', 'fullname'];
            
            foreach ($session_vars as $var) {
                if (isset($_SESSION[$var])) {
                    echo "<p>✅ Session variable '$var' is set to: " . $_SESSION[$var] . "</p>";
                } else {
                    echo "<p>❌ Session variable '$var' is not set</p>";
                }
            }
            
            // Add option to restore session if user is logged in
            if (isset($_SESSION['user_id']) && !isset($_SESSION['id'])) {
                $_SESSION['id'] = $_SESSION['user_id'];
                echo "<p>✅ Fixed: Copied 'user_id' to 'id' session variable</p>";
            }
            
            // Check for academic year
            if (!isset($_SESSION['acad_year'])) {
                $acad_query = "SELECT id FROM academic_year ORDER BY id DESC LIMIT 1";
                $acad_result = $conn->query($acad_query);
                if ($acad_result && $acad_result->num_rows > 0) {
                    $acad_id = $acad_result->fetch_assoc()['id'];
                    $_SESSION['acad_year'] = $acad_id;
                    echo "<p>✅ Fixed: Set 'acad_year' session variable to $acad_id</p>";
                } else {
                    echo "<p>❌ No academic year found in database</p>";
                }
            }
            
            // Option to log in as admin if logged out
            if (!isset($_SESSION['id']) || !isset($_SESSION['user_id'])) {
                echo "<h2>Quick Login as Admin</h2>";
                echo "<form method='post' action=''>";
                echo "<label>Email: <input type='text' name='admin_email' value='admin@example.com'></label><br>";
                echo "<label>Password: <input type='password' name='admin_password' value='admin123'></label><br>";
                echo "<input type='submit' name='login_admin' value='Login as Admin'>";
                echo "</form>";
                
                // Process quick login
                if (isset($_POST['login_admin'])) {
                    $email = $_POST['admin_email'];
                    $password = $_POST['admin_password'];
                    $pass = md5($password);
                    
                    $login_query = "SELECT * FROM step_users WHERE email = '$email' AND password = '$pass'";
                    $login_result = $conn->query($login_query);
                    
                    if ($login_result && $login_result->num_rows > 0) {
                        $user = $login_result->fetch_assoc();
                        $_SESSION['id'] = $user['id'];
                        $_SESSION['user_id'] = $user['id'];
                        $_SESSION['fullname'] = $user['firstname'] . ' ' . $user['lastname'];
                        $_SESSION['usertype'] = $user['usertype'];
                        $_SESSION['dept_id'] = $user['dept'];
                        
                        echo "<p>✅ Successfully logged in as administrator</p>";
                        echo "<p><a href='admin/departments.php'>Go to Admin Dashboard</a></p>";
                    } else {
                        echo "<p>❌ Login failed: Invalid credentials</p>";
                    }
                }
            } else {
                echo "<h2>Go to Dashboard</h2>";
                echo "<p>Your usertype is: " . $_SESSION['usertype'] . "</p>";
                if ($_SESSION['usertype'] == 1) {
                    echo "<p><a href='admin/departments.php'>Go to Admin Dashboard</a></p>";
                } elseif ($_SESSION['usertype'] == 2) {
                    echo "<p><a href='staff/departments.php'>Go to Staff Dashboard</a></p>";
                } elseif ($_SESSION['usertype'] == 3) {
                    echo "<p><a href='heads/employees.php'>Go to Department Head Dashboard</a></p>";
                } elseif ($_SESSION['usertype'] == 0) {
                    echo "<p><a href='student/index.php'>Go to Student Dashboard</a></p>";
                } elseif ($_SESSION['usertype'] == 4) {
                    echo "<p><a href='heads/employees.php'>Go to Head Dashboard</a></p>";
                } elseif ($_SESSION['usertype'] == 5) {
                    echo "<p><a href='instructor/index.php'>Go to Instructor Dashboard</a></p>";
                } else {
                    echo "<p>Unknown usertype: " . $_SESSION['usertype'] . "</p>";
                }
                
                echo "<p><a href='backend_scripts/logout.php'>Logout</a></p>";
            }
        }
    }
} else {
    echo "<p>❌ Database connection file not found</p>";
}
?> 