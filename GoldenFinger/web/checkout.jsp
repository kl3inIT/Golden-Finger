<%-- 
    Document   : wishlist
    Created on : Mar 4, 2025, 11:34:39 AM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Order History</title>
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


        <jsp:include page="header.jsp" />


        <!-- Breadcrumb start -->
        <div class="gi-breadcrumb mb-[40px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <div class="flex flex-wrap m-0 p-[15px] border-[1px] border-solid border-[#eee] rounded-b-[5px] border-t-[0] gi_breadcrumb_inner">
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Checkout</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Checkout</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Checkout section -->
        <section class="gi-checkout-section py-[40px] text-[14px] max-[767px]:py-[30px]">
            <h2 class="hidden">Checkout Page</h2>
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <!-- Sidebar Area Start -->
                    <div class="gi-checkout-rightside px-[12px] min-[992px]:w-[33.33%] w-full">
                        <div class="gi-sidebar-wrap border-[1px] border-solid border-[#eee] mb-[30px] p-[15px] rounded-[5px]">
                            <!-- Sidebar Summary Block -->
                            <div class="gi-sidebar-block">
                                <div class="gi-sb-title">
                                    <h3 class="gi-sidebar-title text-[20px] max-[1199px]:text-[18px] font-semibold tracking-[0] mb-[0] relative text-[#4b5966] leading-[1.2]">Summary</h3>
                                </div>
                                <div class="gi-sb-block-content mt-[15px]">
                                    <div class="gi-checkout-summary">
                                        <div class="gi-checkout-summary-total border-t-[1px] border-solid border-[#eee] pt-[19px] mb-[0] mt-[16px] flex justify-between items-center">
                                            <span class="text-left text-[16px] font-semibold text-[#4b5966] tracking-[0] font-manrope">Total Amount</span>
                                            <span class="text-right text-[16px] font-semibold text-[#4b5966] font-manrope">$80.00</span>
                                        </div>
                                    </div>
                                    <div class="gi-checkout-pro">
                                        <div class="w-full mb-[15px]">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/2_1.jpg" alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/2_2.jpg" alt="Product">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]">
                                                        <a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Dates Value Pack Pouch</a>
                                                    </h5>
                                                    <div class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                    </div>
                                                    <span class="gi-price flex items-center">
                                                        <span class="old-price text-[14px] text-[#777] line-through">$95.00</span>
                                                        <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$79.00</span>
                                                        <span class="new-price text-[#4b5966] font-bold text-[14px] ml-auto pr-[10px]">x1</span>
                                                    </span>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="w-full mb-0">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/8_1.jpg" alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/8_2.jpg" alt="Product">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]">
                                                        <a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Smoked Honey Spiced Nuts</a>
                                                    </h5>
                                                    <div class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                    </div>
                                                    <span class="gi-price">
                                                        <span class="old-price text-[14px] text-[#777] line-through">$58.00</span>
                                                        <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$45.00</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>



                    </div>
                    <div class="gi-checkout-leftside px-[12px] min-[992px]:w-[66.66%] w-full max-[991px]:mt-[30px]">
                        <!-- checkout content Start -->
                        <div class="gi-checkout-content">
                            <div class="gi-checkout-inner">

                                <div class="gi-checkout-wrap pb-[3px] p-[30px] border-[1px] border-solid border-[#eee] bg-[#fff] rounded-[5px] mb-[40px]">
                                    <div class="gi-checkout-block gi-check-bill">
                                        <h3 class="gi-checkout-title mb-[26px] leading-[1.2] text-[20px] font-semibold tracking-[0] relative block text-[#4b5966] font-Montserrat max-[575px]:text-[18px]">Billing Details</h3>
                                        <div class="gi-bl-block-content">

                                            <div class="gi-check-bill-form mb-[2px]">
                                                <form action="#" method="post" class="flex flex-row flex-wrap mx-[-15px]">
                                                    <span class="gi-bill-wrap gi-bill-half w-[50%] px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Full Name*</label>
                                                        <input type="text" name="fullname" placeholder="Enter your full name" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]" required>
                                                    </span>
                                                    <span class="gi-bill-wrap gi-bill-half w-[50%] px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Phone*</label>
                                                        <input type="text" name="phone" placeholder="Enter your phone" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]" required>
                                                    </span>
                                                    <span class="gi-bill-wrap w-full px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Address</label>
                                                        <input type="text" name="address" placeholder="Enter your address" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]">
                                                    </span>
                                                    <span class="gi-bill-wrap w-full px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Comment</label>
                                                        <input type="text" name="comment" placeholder="Enter your comment" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]">
                                                    </span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <span class="gi-check-order-btn flex flex-end p-[0]">
                                    <a class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[15px] text-[14px] font-medium bg-[#5caf90] text-[#fff] text-center rounded-[5px] hover:bg-[#4b5966] hover:text-[#fff]" href="#">Place Order</a>
                                </span>
                            </div>
                        </div>
                        <!--cart content End -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Checkout section End -->





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

    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
</html>
