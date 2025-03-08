<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Reset Password</title>
        <meta name="keywords" content="tailwindcss, ecommerce, piano">
        <meta name="description" content="Piano Shop">
        <meta name="author" content="">

        <!-- site Favicon -->
        <link rel="icon" href="assets/img/favicon/favicon.png" sizes="32x32">

        <!-- css Icon Font -->
        <link rel="stylesheet" href="assets/css/vendor/gicons.css">

        <!-- css All Plugins Files -->
        <link rel="stylesheet" href="assets/css/plugins/animate.css">
        <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/css/plugins/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/plugins/owl.theme.default.min.css">
        <link rel="stylesheet" href="assets/css/plugins/slick.min.css">
        <link rel="stylesheet" href="assets/css/plugins/nouislider.css">

        <!-- Tailwindcss -->
        <script src="assets/js/plugins/tailwindcss3.4.1"></script>

        <!-- Main Style -->
        <link rel="stylesheet" id="main_style" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">

    </head>

    <body class="w-full h-full relative font-Poppins font-normal overflow-x-hidden">

        <!-- Reset Password section -->
        <section class="gi-login py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="section-title-2 w-full mb-[20px] pb-[20px] flex flex-col justify-center items-center">
                    <h2 class="gi-title mb-[0] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Reset Password</h2>
                    <p class="max-w-[400px] mt-[15px] text-[14px] text-[#777] text-center leading-[23px]">Enter your email and create a new password</p>
                </div>
                <div class="gi-login-content max-w-[1000px] m-auto flex flex-row max-[991px]:flex-col max-[1199px]:px-[12px] max-[991px]:w-full">
                    <div class="gi-login-box w-[50%] px-[15px] max-[991px]:w-full max-[991px]:p-[0]">
                        <div class="gi-login-wrapper max-w-[530px] my-[0] mx-auto">
                            <div class="gi-login-container p-[30px] max-[575px]:p-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-left bg-[#fff]">
                                <div class="gi-login-form">
                                    <form action="forgot-password" method="post" class="flex flex-col" id="resetPasswordForm">
                                        <!-- Step 1: Email verification -->
                                        <div id="step1" class="flex flex-col">
                                            <span class="gi-login-wrap flex flex-col">
                                                <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Email*</label>
                                                <input type="email" name="email" id="email" placeholder="Enter your email" class="mb-[27px] px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                            </span>

                                            <input type="hidden" name="step" value="1">

                                            <span class="gi-login-wrap gi-login-btn mt-[30px] flex flex-row justify-between items-center">
                                                <span class="text-[#777] text-[14px]">
                                                    <a href="login" class="text-[#4b5966] hover:text-[#5caf90]">Back to Login</a>
                                                </span>
                                                <button type="submit" class="gi-btn-1 btn py-[8px] px-[15px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">Verify Email</button>
                                            </span>
                                        </div>

                                        <!-- Step 2: New password (initially hidden) -->
                                        <div id="step2" class="flex flex-col ${param.step == '2' ? '' : 'hidden'}">
                                            <input type="hidden" name="token" value="${param.token}">
                                            <input type="hidden" name="step" value="2">

                                            <span class="gi-login-wrap flex flex-col">
                                                <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">New Password*</label>
                                                <input type="password" name="newPassword" id="newPassword" placeholder="Enter new password" class="mb-[27px] px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                            </span>

                                            <span class="gi-login-wrap flex flex-col">
                                                <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Confirm Password*</label>
                                                <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm new password" class="mb-[27px] px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                            </span>

                                            <div id="passwordStrength" class="mb-[15px]">
                                                <div class="w-full h-[5px] bg-gray-200 rounded-full overflow-hidden">
                                                    <div id="strengthBar" class="h-full bg-red-500 transition-all duration-300" style="width: 0%"></div>
                                                </div>
                                                <p id="strengthText" class="text-[12px] text-gray-500 mt-[5px]">Password strength: Too weak</p>
                                            </div>

                                            <span class="gi-login-wrap gi-login-btn mt-[30px] flex flex-row justify-between items-center">
                                                <span class="text-[#777] text-[14px]">
                                                    <a href="login" class="text-[#4b5966] hover:text-[#5caf90]">Back to Login</a>
                                                </span>
                                                <button type="submit" class="gi-btn-1 btn py-[8px] px-[15px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">Reset Password</button>
                                            </span>
                                        </div>

                                        <!-- Error message -->
                                        <c:if test="${not empty requestScope.error}">
                                            <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mt-4" role="alert">
                                                <span class="block sm:inline">${requestScope.error}</span>
                                            </div>
                                        </c:if>

                                        <!-- Success message -->
                                        <c:if test="${not empty requestScope.success}">
                                            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mt-4" role="alert">
                                                <span class="block sm:inline">${requestScope.success}</span>
                                                <c:if test="${not empty requestScope.redirectLogin}">
                                                    <p class="mt-2">Redirecting to login page in <span id="countdown">5</span> seconds...</p>
                                                </c:if>
                                            </div>
                                        </c:if>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gi-login-box w-[50%] px-[15px] max-[991px]:w-full max-[991px]:p-[0] max-[991px]:hidden">
                        <div class="gi-login-img">
                            <img src="assets/img/common/login.png" alt="reset password" class="w-full rounded-[5px]">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Reset Password section End -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins/jquery-3.7.1.min.js"></script>
        <script src="assets/js/plugins/popper.min.js"></script>
        <script src="assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="assets/js/plugins/fontawesome.js"></script>
        <script src="assets/js/plugins/owl.carousel.min.js"></script>
        <script src="assets/js/plugins/infiniteslidev2.js"></script>
        <script src="assets/js/plugins/jquery.zoom.min.js"></script>
        <script src="assets/js/plugins/slick.min.js"></script>
        <script src="assets/js/plugins/nouislider.js"></script>
        <script src="assets/js/plugins/wow.js"></script>

        <!-- Main Js -->
        <script src="assets/js/main.js"></script>

        <!-- Custom JS for password reset -->
        <script>
            // Password strength checker
            document.getElementById('newPassword').addEventListener('input', function () {
                const password = this.value;
                const strengthBar = document.getElementById('strengthBar');
                const strengthText = document.getElementById('strengthText');

                // Calculate strength
                let strength = 0;
                if (password.length >= 8)
                    strength += 25;
                if (password.match(/[a-z]+/))
                    strength += 25;
                if (password.match(/[A-Z]+/))
                    strength += 25;
                if (password.match(/[0-9]+/))
                    strength += 25;

                // Update UI
                strengthBar.style.width = strength + '%';

                if (strength < 25) {
                    strengthBar.className = 'h-full bg-red-500 transition-all duration-300';
                    strengthText.textContent = 'Password strength: Too weak';
                    strengthText.className = 'text-[12px] text-red-500 mt-[5px]';
                } else if (strength < 50) {
                    strengthBar.className = 'h-full bg-orange-500 transition-all duration-300';
                    strengthText.textContent = 'Password strength: Weak';
                    strengthText.className = 'text-[12px] text-orange-500 mt-[5px]';
                } else if (strength < 75) {
                    strengthBar.className = 'h-full bg-yellow-500 transition-all duration-300';
                    strengthText.textContent = 'Password strength: Medium';
                    strengthText.className = 'text-[12px] text-yellow-600 mt-[5px]';
                } else {
                    strengthBar.className = 'h-full bg-green-500 transition-all duration-300';
                    strengthText.textContent = 'Password strength: Strong';
                    strengthText.className = 'text-[12px] text-green-600 mt-[5px]';
                }
            });

            // Password match checker
            document.getElementById('confirmPassword').addEventListener('input', function () {
                const password = document.getElementById('newPassword').value;
                const confirmPassword = this.value;

                if (password !== confirmPassword) {
                    this.setCustomValidity('Passwords do not match');
                } else {
                    this.setCustomValidity('');
                }
            });

            // Form validation
            document.getElementById('resetPasswordForm').addEventListener('submit', function (e) {
                const step = document.querySelector('input[name="step"]').value;

                if (step === '2') {
                    const password = document.getElementById('newPassword').value;
                    const confirmPassword = document.getElementById('confirmPassword').value;

                    if (password !== confirmPassword) {
                        e.preventDefault();
                        alert('Passwords do not match');
                    }

                    if (password.length < 8) {
                        e.preventDefault();
                        alert('Password must be at least 8 characters long');
                    }
                }
            });

            // Countdown for redirect
            const countdownElement = document.getElementById('countdown');
            if (countdownElement) {
                let seconds = 5;
                const countdownInterval = setInterval(function () {
                    seconds--;
                    countdownElement.textContent = seconds;

                    if (seconds <= 0) {
                        clearInterval(countdownInterval);
                        window.location.href = 'login';
                    }
                }, 1000);
            }
        </script>
    </body>

</html>