<?php  
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEAIT-STEP</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<style>
    :root {
        --primary-color: #FF8C00;
        --primary-hover: #E67E00;
        --text-color: #333;
        --border-color: #e0e0e0;
        --bg-light: #f8f9fa;
        --shadow: 0 8px 30px rgba(0,0,0,0.1);
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0;
        padding: 20px;
    }
    
    .login-container {
        width: 100%;
        max-width: 420px;
        padding: 20px;
    }
    
    .login-card {
        background-color: white;
        border-radius: 16px;
        box-shadow: var(--shadow);
        padding: 40px 30px;
        border: none;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    
    .login-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 40px rgba(0,0,0,0.15);
    }
    
    .login-card img {
        width: 130px;
        margin: 0 auto 25px;
        display: block;
        transition: transform 0.5s ease;
    }
    
    .login-card img:hover {
        transform: scale(1.05);
    }
    
    .login-title {
        color: var(--text-color);
        font-weight: 600;
        margin-bottom: 30px;
        text-align: center;
        font-size: 1.3rem;
    }
    
    .form-control {
        border-radius: 10px;
        padding: 14px 15px;
        height: auto;
        border: 1px solid var(--border-color);
        margin-bottom: 25px;
        font-size: 0.95rem;
        transition: all 0.3s ease;
        box-shadow: 0 2px 5px rgba(0,0,0,0.02);
    }
    
    .form-control:focus {
        box-shadow: 0 0 0 3px rgba(255,140,0,0.2);
        border-color: var(--primary-color);
    }
    
    .input-group-text {
        background-color: white;
        border: 1px solid var(--border-color);
        border-right: none;
        color: #888;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        padding: 0 15px;
    }
    
    .input-group .form-control {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
    }
    
    .btn-login {
        background: linear-gradient(45deg, var(--primary-color), #FFA333);
        border: none;
        border-radius: 10px;
        padding: 14px;
        font-weight: 600;
        font-size: 1rem;
        width: 100%;
        transition: all 0.3s;
        box-shadow: 0 4px 15px rgba(255, 140, 0, 0.3);
        letter-spacing: 0.5px;
    }
    
    .btn-login:hover {
        background: linear-gradient(45deg, var(--primary-hover), #FF9500);
        transform: translateY(-3px);
        box-shadow: 0 7px 20px rgba(255, 140, 0, 0.4);
    }
    
    .btn-login:active {
        transform: translateY(-1px);
    }
    
    .forgot-password {
        margin-top: 20px;
        text-align: center;
        font-size: 0.9rem;
    }
    
    .forgot-password a {
        color: var(--primary-color);
        text-decoration: none;
        transition: all 0.2s;
        padding: 5px;
        border-radius: 4px;
    }
    
    .forgot-password a:hover {
        color: var(--primary-hover);
        text-decoration: underline;
    }
    
    /* Input focus animation */
    .input-group:focus-within {
        transform: translateY(-2px);
    }
    
    .input-group {
    margin-bottom: 20px;
}
    /* Modal styling */
    .modala {
        display: none;
        position: fixed;
        z-index: 1000;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.5);
        backdrop-filter: blur(3px);
        transition: all 0.3s ease;
    }
    
    .modala-content {
        background-color: white;
        margin: 10% auto;
        padding: 35px;
        border-radius: 16px;
        box-shadow: var(--shadow);
        width: 90%;
        max-width: 380px;
        position: relative;
        transform: scale(0.9);
        opacity: 0;
        animation: modalFadeIn 0.3s forwards;
    }
    
    @keyframes modalFadeIn {
        to {
            opacity: 1;
            transform: scale(1);
        }
    }
    
    .closea {
        position: absolute;
        right: 20px;
        top: 15px;
        color: #aaa;
        font-size: 24px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.2s;
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
    }
    
    .closea:hover {
        color: var(--primary-color);
        background-color: rgba(0,0,0,0.05);
    }
    
    .modala h4 {
        font-weight: 600;
        color: var(--text-color);
    }
    
    .modala hr {
        margin: 15px 0 20px;
        border-color: rgba(0,0,0,0.1);
    }
    
    #loader {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 9999;
        transition: opacity 0.5s ease;
    }
    
    #loader.fadeOut {
        opacity: 0;
        pointer-events: none;
    }
    
    .spinner {
        width: 50px;
        height: 50px;
        border: 4px solid rgba(255, 140, 0, 0.1);
        border-top: 4px solid var(--primary-color);
        border-radius: 50%;
        animation: spin 1s cubic-bezier(0.6, 0.2, 0.4, 0.8) infinite;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }
    
    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }
    
    .alert {
        border-radius: 10px;
        padding: 12px 15px;
        font-size: 0.9rem;
        border: none;
        box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    }
    
    .form-check {
        padding-left: 1.8rem;
    }
    
    .form-check-input {
        margin-top: 0.25rem;
    }
    
    /* Responsive adjustments */
    @media (max-width: 480px) {
        .login-card {
            padding: 30px 20px;
        }
        .login-title {
            font-size: 1.2rem;
        }
        .form-control, .btn-login {
            padding: 12px;
        }
        .modala-content {
            padding: 25px;
        }
    }
</style>

<body>
    <div id="loader">
        <div class="spinner"></div>
    </div>

    <div class="login-container">
        <div class="login-card">
            <img src="images/guidance_logo.png" alt="Logo">
            <h5 class="login-title">Welcome Back! <span class="d-block mt-1" style="font-size: 0.9em; font-weight: 400; color: #666;">Please login to continue</span></h5>
            
            <?php if(isset($_SESSION['index_error'])): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?php 
                echo $_SESSION['index_error'];
                unset($_SESSION['index_error']);
                ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?php endif; ?>

            <form action="backend_scripts/user_login.php" method="POST" id="loginForm" onsubmit="return validateForm()">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" name="email" id="email" placeholder="Email or School ID" required>
                </div>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                </div>
                
                <?php include('index_notification.php');?>
                
                <button type="submit" class="btn btn-primary btn-login">LOGIN</button>
                
                
                <div class="mt-3 text-center">
                    <small class="text-muted">
                        <i class="fas fa-info-circle"></i> Students: Use your Student ID as both username and password.
                    </small>
                </div>
                
                <!-- <div class="forgot-password">
                    <a href="#" id="openModalBtn">Forgot password?</a>
                </div> -->
            </form>
        </div>
    </div>
    
    <div id="myModala" class="modala">
        <div class="modala-content">
            <span class="closea">&times;</span>
            <h4 class="text-center mb-3">Forgot Password</h4>
            <hr>
            
            <div id="error_email" style="display: none;" class="alert alert-danger text-center py-2 mb-3">
                Email provided is invalid or does not exist!
            </div>
            
            <div id="error_code" style="display: none;" class="alert alert-danger text-center py-2 mb-3">
                Invalid Reset Code
            </div>
            
            <form id="email_form" style="margin-bottom: 20px;" class="form-signin" method="post">
                <p class="text-center mb-3">Please enter your email for reset code</p>
                <input type="text" class="form-control mb-3" id="email" name="email" placeholder="Username" required>
                <button type="submit" id="send_email" name="send_email" class="btn btn-block" style="background: linear-gradient(45deg, var(--primary-color), #FFA333); color: white; border-radius: 10px; padding: 12px; font-weight: 600; transition: all 0.3s; box-shadow: 0 4px 15px rgba(255, 140, 0, 0.3);">Send</button>
            </form>
            <br>
            
            <form id="code_form" class="form-signin" style="margin-top: 20px;" method="post" style="display: none;">
                <p class="text-center mb-3">Please check your email and enter the reset code</p>
                <input type="number" class="form-control mb-3" id="reset_code" name="reset_code" placeholder="Reset Code" required>
                <button type="submit" id="verify_code" name="reset_code" class="btn btn-block" style="background: linear-gradient(45deg, var(--primary-color), #FFA333); color: white; border-radius: 10px; padding: 12px; font-weight: 600; transition: all 0.3s; box-shadow: 0 4px 15px rgba(255, 140, 0, 0.3);">Verify</button>
            </form>
            
            <form id="password_form" class="form-signin" method="post" style="display: none;">
                <p class="text-center mb-3">Please enter new password</p>
                <input type="password" class="form-control mb-3" id="new_password" name="new_password" placeholder="New Password" required>
                <div class="form-check text-center mb-3">
                    <input type="checkbox" class="form-check-input" onclick="myFunctionReset()" id="showPassword">
                    <label class="form-check-label" for="showPassword">Show Password</label>
                </div>
                <button type="submit" id="change_pass" name="change_pass" class="btn btn-block" style="background: linear-gradient(45deg, var(--primary-color), #FFA333); color: white; border-radius: 10px; padding: 12px; font-weight: 600; transition: all 0.3s; box-shadow: 0 4px 15px rgba(255, 140, 0, 0.3);">Change Password</button>
            </form>
        </div>
    </div>

    <script>
        // Loader script
        window.addEventListener('load', function load() {
            const loader = document.getElementById('loader');
            setTimeout(function() {
                loader.classList.add('fadeOut');
            }, 800);
        });
        
        // Modal functionality
        const modal = document.getElementById("myModala");
        const openModalBtn = document.getElementById("openModalBtn");
        const closeBtn = document.getElementsByClassName("closea")[0];
        
        if (openModalBtn) {
            openModalBtn.onclick = function(e) {
                e.preventDefault();
                modal.style.display = "block";
            }
        }
        
        if (closeBtn) {
            closeBtn.onclick = function() {
                modal.style.display = "none";
            }
        }
        
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        
        // Show password function
        function myFunctionReset() {
            const passwordField = document.getElementById("new_password");
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }

        function validateForm() {
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            
            if (!email || !password) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Please fill in all fields.',
                    confirmButtonColor: '#FF8C00'
                });
                return false;
            }
            
            // Email validation
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            const schoolIdRegex = /^[A-Za-z0-9]+$/;
            
            if (!emailRegex.test(email) && !schoolIdRegex.test(email)) {
                Swal.fire({
                    icon: 'error',
                    title: 'Invalid Input',
                    text: 'Please enter a valid email or school ID.',
                    confirmButtonColor: '#FF8C00'
                });
                return false;
            }
            
            // Show loading state
            document.getElementById('loader').style.display = 'flex';
            return true;
        }
    </script>
</body>
</html>
<?php
    session_destroy();
?>