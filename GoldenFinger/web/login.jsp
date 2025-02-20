<%-- 
    Document   : login
    Created on : Feb 20, 2025, 11:42:49 PM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

    <title>Login</title>
    <meta name="keywords" content="tailwindcss, ecommerce, farming, food market, grocery market, grocery shop, grocery store, grocery supper market, multi vendor, organic food, supermarket, supermarket grocery">
    <meta name="description" content="Multipurpose eCommerce Tailwind CSS Template">
    <meta name="author" content="Maraviya Infotech">

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

    <jsp:include page="header"/> 

      <!-- Breadcrumb start -->
    <div class="gi-breadcrumb mb-[40px]">
        <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
            <div class="flex flex-wrap w-full">
                <div class="w-full px-[12px]">
                    <div class="flex flex-wrap m-0 p-[15px] border-[1px] border-solid border-[#eee] rounded-b-[5px] border-t-[0] gi_breadcrumb_inner">
                        <div class="min-[768px]:w-[50%] w-full px-[12px]">
                            <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Login Page</h2>
                        </div>
                        <div class="min-[768px]:w-[50%] w-full px-[12px]">
                            <!-- gi-breadcrumb-list start -->
                            <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="index.html" class="relative text-[#4b5966]">Home</a></li>
                                <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Login Page</li>
                            </ul>
                            <!-- gi-breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb end -->

    <!-- Login section -->
    <section class="gi-login py-[40px] max-[767px]:py-[30px]">
        <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
            <div class="section-title-2 w-full mb-[20px] pb-[20px] flex flex-col justify-center items-center">
                <h2 class="gi-title mb-[0] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Login</h2>
                <p class="max-w-[400px] mt-[15px] text-[14px] text-[#777] text-center leading-[23px]">Get access to your Orders, Wishlist and Recommendations.</p>
            </div>
            <div class="gi-login-content max-w-[1000px] m-auto flex flex-row max-[991px]:flex-col max-[1199px]:px-[12px] max-[991px]:w-full">
                <div class="gi-login-box w-[50%] px-[15px] max-[991px]:w-full max-[991px]:p-[0]">
                    <div class="gi-login-wrapper max-w-[530px] my-[0] mx-auto">
                        <div class="gi-login-container p-[30px] max-[575px]:p-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-left bg-[#fff]">
                            <div class="gi-login-form">
                                <form action="#" method="post" class="flex flex-col">
                                    <span class="gi-login-wrap flex flex-col">
                                        <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Username*</label>
                                        <input type="text" name="name" placeholder="Enter your username" class="mb-[27px] px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                    </span>
                                    <span class="gi-login-wrap flex flex-col">
                                        <label class="mb-[10px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">Password*</label>
                                        <input type="password" name="password" placeholder="Enter your password" class="mb-[15px] px-[15px] bg-transparent border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] outline-[0] h-[50px]" required>
                                    </span>
                                    <span class="gi-login-wrap flex flex-col gi-login-fp">
                                        <label class="mb-[0] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1]">
                                            <a href="javascript:void(0)" class="mt-[10px] text-[#777] text-[14px] font-normal tracking-[0] flex justify-end">Forgot Password?</a>
                                        </label>
                                    </span>
                                    <span class="gi-login-wrap gi-login-btn mt-[30px] flex flex-row justify-between items-center">
                                        <span class="text-[#777] text-[14px]">
                                            <a href="register.html" class="text-[#4b5966] hover:text-[#5caf90]">Create Account?</a>
                                        </span>
                                        <button type="submit" class="gi-btn-1 btn py-[8px] px-[15px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center text-[14px] font-semibold relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">Login</button>
                                    </span>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gi-login-box w-[50%] px-[15px] max-[991px]:w-full max-[991px]:p-[0] max-[991px]:hidden">
                    <div class="gi-login-img">
                        <img src="assets/img/common/login.png" alt="login" class="w-full rounded-[5px]">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login section End -->

    <jsp:include page="footer"/> 

    

    <!-- Back to top  -->
    <a class="gi-back-to-top inline-block bg-[#4b5966] w-[40px] h-[40px] text-center rounded-[4px] fixed bottom-[30px] right-[30px] opacity-[0] invisible z-[16] border-[1px] border-solid border-[#fff] hover:cursor-pointer hover:bg-[#000] hover:opacity-[1] max-[767px]:bottom-[15px] max-[767px]:right-[15px]"></a>

   

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
</body>


<!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
</html>
