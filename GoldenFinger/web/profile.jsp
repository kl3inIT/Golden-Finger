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

        <title>My Profile</title>
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

        <jsp:include page="header.jsp" />

        <!-- Breadcrumb start -->
        <div class="gi-breadcrumb mb-[40px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <div class="flex flex-wrap m-0 p-[15px] border-[1px] border-solid border-[#eee] rounded-b-[5px] border-t-[0] gi_breadcrumb_inner">
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">My Profile</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">My Profile</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Profile section -->
        <section class="gi-profile-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-start mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <!-- Profile Sidebar -->
                    <div class="gi-profile-sidebar min-[992px]:w-[25%] w-full px-[12px] max-[991px]:mb-[30px]">
                        <div class="gi-sidebar-wrap p-[20px] rounded-[5px] border-[1px] border-solid border-[#eee] bg-[#fff]">
                            <div class="gi-profile-user mb-[20px] flex flex-col items-center">
                                <h4 class="gi-user-name text-[18px] font-semibold text-[#4b5966] mb-[5px]">${sessionScope.account.fullName}</h4>
                                <p class="gi-user-email text-[14px] text-[#777]">${sessionScope.account.email}</p>
                            </div>

                            <div class="gi-profile-menu">
                                <ul>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="#profile-info" class="active py-[10px] px-[15px] flex items-center text-[14px] text-[#fff] bg-[#5caf90] rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-user mr-[10px]"></i> Personal Information
                                        </a>
                                    </li>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="#change-password" class="py-[10px] px-[15px] flex items-center text-[14px] text-[#4b5966] bg-[#f8f8fb] rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-key mr-[10px]"></i> Change Password
                                        </a>
                                    </li>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="orderhistory" class="py-[10px] px-[15px] flex items-center text-[14px] text-[#4b5966] bg-[#f8f8fb] rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-shopping-bag mr-[10px]"></i> Order History
                                        </a>
                                    </li>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="wishlist" class="py-[10px] px-[15px] flex items-center text-[14px] text-[#4b5966] bg-[#f8f8fb] rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-heart mr-[10px]"></i> My Wishlist
                                        </a>
                                    </li>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="cart" class="py-[10px] px-[15px] flex items-center text-[14px] text-[#4b5966] bg-[#f8f8fb] rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-shopping-bag mr-[10px]"></i> My Cart
                                        </a>
                                    </li>
                                    <li class="mb-[10px] last:mb-[0]">
                                        <a href="logout" class="py-[10px] px-[15px] flex items-center text-[14px] text-[#ff7070] bg-[#fff6f6] rounded-[5px] hover:bg-[#ff7070] hover:text-[#fff] transition-all duration-[0.3s] ease-in-out">
                                            <i class="fi fi-rr-sign-out mr-[10px]"></i> Logout
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Profile Content -->
                    <div class="gi-profile-content min-[992px]:w-[75%] w-full px-[12px]">
                        <!-- Personal Information Section -->
                        <div id="profile-info" class="gi-profile-section-content mb-[30px]">
                            <div class="gi-section-title mb-[20px] pb-[15px] border-b-[1px] border-solid border-[#eee]">
                                <h3 class="text-[20px] font-semibold text-[#4b5966]">Personal Information</h3>
                            </div>

                            <div class="gi-profile-form p-[20px] rounded-[5px] border-[1px] border-solid border-[#eee] bg-[#fff]">
                                <!-- Success message -->
                                <c:if test="${not empty requestScope.success}">
                                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mb-4" role="alert">
                                        <span class="block sm:inline">${requestScope.success}</span>
                                    </div>
                                </c:if>

                                <!-- Error message -->
                                <c:if test="${not empty requestScope.error}">
                                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-4" role="alert">
                                        <span class="block sm:inline">${requestScope.error}</span>
                                    </div>
                                </c:if>

                                <!-- Display user information -->
                                <div id="userInfoDisplay">
                                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Username:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.username}</p>
                                        </div>
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Full Name:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.fullName}</p>
                                        </div>
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Email:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.email}</p>
                                        </div>
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Phone Number:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.phone}</p>
                                        </div>
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Birth Date:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.birthDate}</p>
                                        </div>
                                        <div>
                                            <p class="text-[#4b5966] text-[15px] font-medium mb-1">Address:</p>
                                            <p class="text-[#777] text-[14px]">${sessionScope.account.address}</p>
                                        </div>
                                    </div>
                                    <button id="editProfileBtn" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">Edit Information</button>
                                </div>

                                <!-- Edit form (hidden by default) -->
                                <form id="editProfileForm" action="profile" method="post" class="flex flex-wrap hidden">
                                    <input type="hidden" name="action" value="updateProfile">

                                    <div class="min-[768px]:w-[50%] w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Username</label>
                                            <input type="text" name="username" value="${sessionScope.account.username}" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" readonly>
                                        </div>
                                    </div>

                                    <div class="min-[768px]:w-[50%] w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Full Name*</label>
                                            <input type="text" name="fullName" value="${sessionScope.account.fullName}" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="min-[768px]:w-[50%] w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Email*</label>
                                            <input type="email" name="email" value="${sessionScope.account.email}" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="min-[768px]:w-[50%] w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Phone Number*</label>
                                            <input type="tel" name="phone" value="${sessionScope.account.phone}" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="min-[768px]:w-[50%] w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Birth Date</label>
                                            <input type="date" name="birthDate" value="${sessionScope.account.birthDate}" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]">
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Address</label>
                                            <textarea name="address" rows="3" class="w-full px-[15px] py-[12px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0]">${sessionScope.account.address}</textarea>
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px]">
                                        <button type="submit" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] mr-2">Save Changes</button>
                                        <button type="button" id="cancelEditBtn" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#f8f8fb] text-[#4b5966] border-[1px] border-solid border-[#eee] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#f1f1f1]">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!-- Change Password Section -->
                        <div id="change-password" class="gi-profile-section-content">
                            <div class="gi-section-title mb-[20px] pb-[15px] border-b-[1px] border-solid border-[#eee]">
                                <h3 class="text-[20px] font-semibold text-[#4b5966]">Change Password</h3>
                            </div>

                            <div class="gi-password-form p-[20px] rounded-[5px] border-[1px] border-solid border-[#eee] bg-[#fff]">
                                <!-- Success message -->
                                <c:if test="${not empty requestScope.passwordSuccess}">
                                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mb-4" role="alert">
                                        <span class="block sm:inline">${requestScope.passwordSuccess}</span>
                                    </div>
                                </c:if>

                                <!-- Error message -->
                                <c:if test="${not empty requestScope.passwordError}">
                                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-4" role="alert">
                                        <span class="block sm:inline">${requestScope.passwordError}</span>
                                    </div>
                                </c:if>

                                <!-- Change password button -->
                                <div id="changePasswordDisplay">
                                    <p class="text-[#777] text-[14px] mb-4">You can change your password to enhance your account security.</p>
                                    <button id="changePasswordBtn" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">Change Password</button>
                                </div>

                                <!-- Change password form (hidden by default) -->
                                <form id="changePasswordForm" action="profile" method="post" class="flex flex-wrap hidden">
                                    <input type="hidden" name="action" value="changePassword">

                                    <div class="w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Current Password*</label>
                                            <input type="password" name="currentPassword" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">New Password*</label>
                                            <input type="password" name="newPassword" id="newPassword" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px] mb-[20px]">
                                        <div class="gi-form-group">
                                            <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Confirm New Password*</label>
                                            <input type="password" name="confirmPassword" id="confirmPassword" class="w-full px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px] mb-[20px]">
                                        <div id="passwordStrength" class="mb-[15px]">
                                            <div class="w-full h-[5px] bg-gray-200 rounded-full overflow-hidden">
                                                <div id="strengthBar" class="h-full bg-red-500 transition-all duration-300" style="width: 0%"></div>
                                            </div>
                                            <p id="strengthText" class="text-[12px] text-gray-500 mt-[5px]">Password strength: Too weak</p>
                                        </div>
                                    </div>

                                    <div class="w-full px-[12px]">
                                        <button type="submit" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff] mr-2">Update Password</button>
                                        <button type="button" id="cancelPasswordBtn" class="gi-btn-1 btn py-[12px] px-[25px] bg-[#f8f8fb] text-[#4b5966] border-[1px] border-solid border-[#eee] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#f1f1f1]">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Profile section End -->

        <!-- Back to top  -->
        <a class="gi-back-to-top inline-block bg-[#4b5966] w-[40px] h-[40px] text-center rounded-[4px] fixed bottom-[30px] right-[30px] opacity-[0] invisible z-[16] border-[1px] border-solid border-[#fff] hover:cursor-pointer hover:bg-[#000] hover:opacity-[1] max-[767px]:bottom-[15px] max-[767px]:right-[15px]"></a>

        <jsp:include page="footer.jsp" />

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

        <!-- Custom JS for profile page -->
        <script>
            // Show/hide edit profile form
            document.getElementById('editProfileBtn').addEventListener('click', function() {
                document.getElementById('userInfoDisplay').classList.add('hidden');
                document.getElementById('editProfileForm').classList.remove('hidden');
            });

            document.getElementById('cancelEditBtn').addEventListener('click', function() {
                document.getElementById('userInfoDisplay').classList.remove('hidden');
                document.getElementById('editProfileForm').classList.add('hidden');
            });

            // Show/hide change password form
            document.getElementById('changePasswordBtn').addEventListener('click', function() {
                document.getElementById('changePasswordDisplay').classList.add('hidden');
                document.getElementById('changePasswordForm').classList.remove('hidden');
            });

            document.getElementById('cancelPasswordBtn').addEventListener('click', function() {
                document.getElementById('changePasswordDisplay').classList.remove('hidden');
                document.getElementById('changePasswordForm').classList.add('hidden');
            });

            // Smooth scroll to sections
            document.querySelectorAll('.gi-profile-menu a').forEach(anchor => {
                if (anchor.getAttribute('href').startsWith('#')) {
                    anchor.addEventListener('click', function (e) {
                        e.preventDefault();

                        // Remove active class from all links
                        document.querySelectorAll('.gi-profile-menu a').forEach(a => {
                            a.classList.remove('active');
                            a.classList.remove('bg-[#5caf90]');
                            a.classList.remove('text-[#fff]');
                            a.classList.add('bg-[#f8f8fb]');
                            a.classList.add('text-[#4b5966]');
                        });

                        // Add active class to clicked link
                        this.classList.add('active');
                        this.classList.add('bg-[#5caf90]');
                        this.classList.add('text-[#fff]');
                        this.classList.remove('bg-[#f8f8fb]');
                        this.classList.remove('text-[#4b5966]');

                        const targetId = this.getAttribute('href');
                        const targetElement = document.querySelector(targetId);

                        window.scrollTo({
                            top: targetElement.offsetTop - 100,
                            behavior: 'smooth'
                        });
                    });
                }
            });

            // Password strength checker
            const newPasswordInput = document.getElementById('newPassword');
            if (newPasswordInput) {
                newPasswordInput.addEventListener('input', function () {
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
            }

            // Password match checker
            const confirmPasswordInput = document.getElementById('confirmPassword');
            if (confirmPasswordInput) {
                confirmPasswordInput.addEventListener('input', function () {
                    const password = document.getElementById('newPassword').value;
                    const confirmPassword = this.value;

                    if (password !== confirmPassword) {
                        this.setCustomValidity('Passwords do not match');
                    } else {
                        this.setCustomValidity('');
                    }
                });
            }

            // Form validation for password change
            const changePasswordForm = document.getElementById('changePasswordForm');
            if (changePasswordForm) {
                changePasswordForm.addEventListener('submit', function (e) {
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
                });
            }

            // Check if there's a hash in the URL and scroll to that section
            document.addEventListener('DOMContentLoaded', function () {
                if (window.location.hash) {
                    const targetId = window.location.hash;
                    const targetElement = document.querySelector(targetId);

                    if (targetElement) {
                        // Find the corresponding menu item and activate it
                        const menuItem = document.querySelector(`.gi-profile-menu a[href="${targetId}"]`);
                        if (menuItem) {
                            // Remove active class from all links
                            document.querySelectorAll('.gi-profile-menu a').forEach(a => {
                                a.classList.remove('active');
                                a.classList.remove('bg-[#5caf90]');
                                a.classList.remove('text-[#fff]');
                                a.classList.add('bg-[#f8f8fb]');
                                a.classList.add('text-[#4b5966]');
                            });
                            // Add active class to target link
                            menuItem.classList.add('active');
                            menuItem.classList.add('bg-[#5caf90]');
                            menuItem.classList.add('text-[#fff]');
                            menuItem.classList.remove('bg-[#f8f8fb]');
                            menuItem.classList.remove('text-[#4b5966]');
                        }

                        // Scroll to the section
                        setTimeout(() => {
                            window.scrollTo({
                                top: targetElement.offsetTop - 100,
                                behavior: 'smooth'
                            });
                        }, 300);
                    }
                }
            });
        </script>
    </body>
</html>