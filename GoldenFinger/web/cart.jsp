<%-- 
    Document   : cart
    Created on : Feb 27, 2025, 12:44:41 PM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:26 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Cart</title>
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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Cart Page</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="index.html" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Cart Page</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Cart section -->
        <section class="gi-cart-section py-[40px] max-[767px]:py-[30px]">
            <h2 class="hidden">Cart Page</h2>
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">

                    <div class="gi-cart-leftside min-[992px]:w-[100%] w-full px-[12px] max-[991px]:mt-[30px]">
                        <!-- cart content Start -->
                        <div class="gi-cart-content">
                            <div class="gi-cart-inner">
                                <div class="flex flex-wrap w-full">
                                    <form action="#" class="w-full">
                                        <div class="table-content cart-table-content">
                                            <table class="w-full bg-[#fff] ">
                                                <thead class="max-[767px]:border-[0] max-[767px]:h-[1px] max-[767px]:m-[-1px] max-[767px]:overflow-hidden max-[767px]:p-[0] max-[767px]:absolute max-[767px]:w-[1px]">
                                                    <tr class="bg-[#fff] border-b-[2px] border-solid border-[#eee]">
                                                        <th class="text-[#4b5966] text-[15px] font-medium pt-[15px] pb-[12px] px-[14px] text-left capitalize align-middle whitespace-nowrap leading-[1] tracking-[0]">Product</th>
                                                        <th class="text-[#4b5966] text-[15px] font-medium pt-[15px] pb-[12px] px-[14px] text-left capitalize align-middle whitespace-nowrap leading-[1] tracking-[0]">Price</th>
                                                        <th class="text-[#4b5966] text-[15px] font-medium pt-[15px] pb-[12px] px-[14px] text-center capitalize align-middle whitespace-nowrap leading-[1] tracking-[0]">Quantity</th>
                                                        <th class="text-[#4b5966] text-[15px] font-medium pt-[15px] pb-[12px] px-[14px] text-left capitalize align-middle whitespace-nowrap leading-[1] tracking-[0]">Total</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="border-b-[1px] border-solid border-[#eee] max-[767px]:border-[1px] max-[767px]:block max-[767px]:mb-[15px]">
                                                        <td data-label="Product" class="gi-cart-pro-name w-[40%] text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:w-full max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="product-left-sidebar.html" class="text-[#777] font-normal text-[14px] flex leading-[1.5] tracking-[0.6px] items-center">
                                                                <img class="gi-cart-pro-img w-[60px] mr-[15px]" src="assets/img/product-images/1_1.jpg" alt="">Crunchy
                                                                Triangle Chips Snacks
                                                            </a>
                                                        </td>
                                                        <td data-label="Price" class="gi-cart-pro-price text-[#4b5966] font-medium text-[15px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <span class="amount tracking-[0.02rem]">$56.00</span>
                                                        </td>
                                                        <td data-label="Quantity" class="gi-cart-pro-qty text-[#4b5966] text-[16px] py-[15px] px-[14px] text-center max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <div class="cart-qty-plus-minus border-[1px] border-solid border-[#eee] rounded-[5px] h-[35px] overflow-hidden p-[0] relative w-[84px] flex items-center justify-between my-[0] mx-auto max-[767px]:m-[0]">
                                                                <input class="cart-plus-minus border-[0] text-[#4b5966] float-left text-[14px] h-auto m-[0] p-[0] text-center w-[40px] outline-[0] leading-[38px] font-semibold" type="text" name="cartqtybutton" value="1">
                                                            </div>
                                                        </td>
                                                        <td data-label="Total" class="gi-cart-pro-subtotal text-[#4b5966] text-[15px] font-medium py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">$56.00</td>
                                                        <td data-label="Remove" class="gi-cart-pro-remove text-[#4b5966] w-[90px] text-[16px] py-[15px] px-[14px] text-right max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="#" class="text-[22px] my-[0] mx-auto"><i class="gicon gi-trash-o"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr class="border-b-[1px] border-solid border-[#eee] max-[767px]:border-[1px] max-[767px]:block max-[767px]:mb-[15px]">
                                                        <td data-label="Product" class="gi-cart-pro-name w-[40%] text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:w-full max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="product-left-sidebar.html" class="text-[#777] font-normal text-[14px] flex leading-[1.5] tracking-[0.6px] items-center">
                                                                <img class="gi-cart-pro-img w-[60px] mr-[15px]" src="assets/img/product-images/2_1.jpg" alt="">Dates
                                                                Value Pack Pouch
                                                            </a>
                                                        </td>
                                                        <td data-label="Price" class="gi-cart-pro-price text-[#4b5966] font-medium text-[15px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <span class="amount tracking-[0.02rem]">$75.00</span>
                                                        </td>
                                                        <td data-label="Quantity" class="gi-cart-pro-qty text-[#4b5966] text-[16px] py-[15px] px-[14px] text-center max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <div class="cart-qty-plus-minus border-[1px] border-solid border-[#eee] rounded-[5px] h-[35px] overflow-hidden p-[0] relative w-[84px] flex items-center justify-between my-[0] mx-auto max-[767px]:m-[0]">
                                                                <input class="cart-plus-minus border-[0] text-[#4b5966] float-left text-[14px] h-auto m-[0] p-[0] text-center w-[40px] outline-[0] leading-[38px] font-semibold" type="text" name="cartqtybutton" value="1">
                                                            </div>
                                                        </td>
                                                        <td data-label="Total" class="gi-cart-pro-subtotal text-[#4b5966] text-[15px] font-medium py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">$75.00</td>
                                                        <td data-label="Remove" class="gi-cart-pro-remove text-[#4b5966] w-[90px] text-[16px] py-[15px] px-[14px] text-right max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="#" class="text-[22px] my-[0] mx-auto"><i class="gicon gi-trash-o"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr class="border-b-[1px] border-solid border-[#eee] max-[767px]:border-[1px] max-[767px]:block max-[767px]:mb-[15px]">
                                                        <td data-label="Product" class="gi-cart-pro-name w-[40%] text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:w-full max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="product-left-sidebar.html" class="text-[#777] font-normal text-[14px] flex leading-[1.5] tracking-[0.6px] items-center">
                                                                <img class="gi-cart-pro-img w-[60px] mr-[15px]" src="assets/img/product-images/3_1.jpg" alt="">Californian Almonds Value Pack
                                                            </a>
                                                        </td>
                                                        <td data-label="Price" class="gi-cart-pro-price text-[#4b5966] font-medium text-[15px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <span class="amount tracking-[0.02rem]">$48.00</span>
                                                        </td>
                                                        <td data-label="Quantity" class="gi-cart-pro-qty text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <div class="cart-qty-plus-minus border-[1px] border-solid border-[#eee] rounded-[5px] h-[35px] overflow-hidden p-[0] relative w-[84px] flex items-center justify-between my-[0] mx-auto max-[767px]:m-[0]">
                                                                <input class="cart-plus-minus border-[0] text-[#4b5966] float-left text-[14px] h-auto m-[0] p-[0] text-center w-[40px] outline-[0] leading-[38px] font-semibold" type="text" name="cartqtybutton" value="1">
                                                            </div>
                                                        </td>
                                                        <td data-label="Total" class="gi-cart-pro-subtotal text-[#4b5966] text-[15px] font-medium py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">$48.00</td>
                                                        <td data-label="Remove" class="gi-cart-pro-remove text-[#4b5966] w-[90px] text-[16px] py-[15px] px-[14px] text-right max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="#" class="text-[22px] my-[0] mx-auto"><i class="gicon gi-trash-o"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr class="border-b-[1px] border-solid border-[#eee] max-[767px]:border-[1px] max-[767px]:block max-[767px]:mb-[15px]">
                                                        <td data-label="Product" class="gi-cart-pro-name w-[40%] text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:w-full max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="product-left-sidebar.html" class="text-[#777] font-normal text-[14px] flex leading-[1.5] tracking-[0.6px] items-center">
                                                                <img class="gi-cart-pro-img w-[60px] mr-[15px]" src="assets/img/product-images/4_1.jpg" alt="">
                                                                Banana Chips Snacks & Spices
                                                            </a>
                                                        </td>
                                                        <td data-label="Price" class="gi-cart-pro-price text-[#4b5966] font-medium text-[15px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <span class="amount tracking-[0.02rem]">$95.00</span>
                                                        </td>
                                                        <td data-label="Quantity" class="gi-cart-pro-qty text-[#4b5966] text-[16px] py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <div class="cart-qty-plus-minus border-[1px] border-solid border-[#eee] rounded-[5px] h-[35px] overflow-hidden p-[0] relative w-[84px] flex items-center justify-between my-[0] mx-auto max-[767px]:m-[0]">
                                                                <input class="cart-plus-minus border-[0] text-[#4b5966] float-left text-[14px] h-auto m-[0] p-[0] text-center w-[40px] outline-[0] leading-[38px] font-semibold" type="text" name="cartqtybutton" value="1">
                                                            </div>
                                                        </td>
                                                        <td data-label="Total" class="gi-cart-pro-subtotal text-[#4b5966] text-[15px] font-medium py-[15px] px-[14px] text-left max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">$95.00</td>
                                                        <td data-label="Remove" class="gi-cart-pro-remove text-[#4b5966] w-[90px] text-[16px] py-[15px] px-[14px] text-right max-[767px]:border-b-[1px] max-[767px]:border-solid max-[767px]:border-[#eee] max-[767px]:flex max-[767px]:justify-between max-[767px]:items-center max-[767px]:text-[14px] max-[767px]:py-[8px] max-[767px]:px-[10px]">
                                                            <a href="#" class="text-[22px] my-[0] mx-auto"><i class="gicon gi-trash-o"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="flex flex-wrap">
                                            <div class="w-full">
                                                <div class="gi-cart-update-bottom pt-[30px] flex justify-between">
                                                    <div>
                                                        <span class="text-left text-[16px] font-medium text-[#4b5966] leading-[24px] tracking-[0]">Total Amount : </span>
                                                        <span class="text-right text-[16px] font-medium text-red-600 leading-[24px] tracking-[0] ml-3">$80.00</span>
                                                    </div>

                                                    <button type="button" class="gi-btn-2 transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] py-[10px] max-[767px]:py-[6px] px-[15px] max-[767px]:px-[10px] bg-[#5caf90] text-[#fff] border-[0] text-[14px] max-[767px]:text-[13px] tracking-[0] font-medium inline-flex items-center hover:bg-[#4b5966] hover:text-[#fff]">Check Out</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--cart content End -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Cart section End -->

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


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:27 GMT -->
</html>
