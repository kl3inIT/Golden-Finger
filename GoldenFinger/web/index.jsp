<%-- 
    Document   : index.jsp
    Created on : Feb 15, 2025, 9:43:58 AM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!--
Item Name: Grabit - Multipurpose eCommerce Tailwind CSS Template.
Author: Maraviya Infotech
Version: 1.0.0
Copyright 2024
-->
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <title>Golden Finger</title>
        <meta name="keywords"  content="Piano">
        <meta name="description" content="Piano">
        <meta name="author" content="NhatNhu">

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
        <link rel="stylesheet" id="main_style" href="assets/css/demo-1.css">
        <link rel="stylesheet" href="assets/css/responsive.css">

    </head>



    <body class="w-full h-full relative font-Poppins font-normal overflow-x-hidden">                
        
        <!-- Loader -->
        <div id="gi-overlay" class=" w-full h-full fixed top-0 right-0 left-0 bottom-0 bg-[#fff] z-[99] flex items-center justify-center overflow-hidden">
            <div class="loader"></div>
        </div>

        <!-- Header start  -->
        <header class="gi-header bg-[#fff] z-[14] max-[991px]:z-[16] relative">
            <!-- Header Top Start -->
            <div class="header-top py-[10px] text-[#777] bg-[#f8f8fb] header-top block max-[990px]:block min-[991px]:hidden">
                <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                    <div class="w-full flex flex-wrap px-[12px]">
                        <!-- Header Top social Start -->
                        <div class="grow-[1] shrink-[0] basis-[0%] min-[992px]:block max-[767px]:hidden">
                            <div class="header-top-social">
                                <ul class="mb-[0] p-[0] flex">
                                    <li class="list-inline-item transition-all duration-[0.3s] ease-in-out flex text-[13px] mr-[15px]">
                                        <a href="javascript:void(0)" class="mx-[5px] text-center flex items-center justify-center text-[15px]">
                                            <i class="fi fi-rr-phone-call transition-all duration-[0.3s] ease-in-out text-[#777]"></i>
                                        </a>
                                        +91 987 654 3210
                                    </li>
                                    <li class="list-inline-item transition-all duration-[0.3s] ease-in-out flex text-[13px]">
                                        <a href="javascript:void(0)" class="mx-[5px] text-center flex items-center justify-center text-[15px]">
                                            <i class="fi fi-brands-whatsapp transition-all duration-[0.3s] ease-in-out text-[#777]"></i>
                                        </a>
                                        +91 987 654 3210
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Header Top social End -->
                        <!-- Header Top Message Start -->
                        <div class="grow-[1] shrink-[0] basis-[0%] text-center max-[1199px]:hidden">
                            <div class="header-top-message text-[13px]">
                                World's Fastest Online Shopping Destination
                            </div>
                        </div>
                        <!-- Header Top Message End -->
                        <!-- Header Top Language Currency -->
                        <div class="grow-[1] shrink-[0] basis-[0%] hidden min-[992px]:block">
                            <div class="header-top-right-inner flex justify-end">
                                <a class="gi-help pl-[20px] text-[13px] text-[#777] tracking-[0.7px] font-normal hover:text-[#5caf90]" href="faq.html">Help?</a>
                                <a class="gi-help pl-[20px] text-[13px] text-[#777] tracking-[0.7px] font-normal hover:text-[#5caf90]" href="track-order.html">Track Order?</a>
                                <!-- Language Start -->
                                <div class="header-top-lan-curr header-top-lan dropdown pl-[20px] flex flex-wrap relative">
                                    <button type="button" class="dropdown-toggle text-[13px] flex items-center p-[0] transition-all duration-[0.3s] ease delay-0 text-[#777] border-[0] tracking-[0.7px]">English
                                        <i class="fi-rr-angle-small-down text-[14px] ml-[5px] text-[#777] transition-all duration-[0.3s] ease delay-0 flex"></i>
                                    </button>
                                    <ul class="hidden dropdown-menu absolute top-[32px] left-[auto] right-[0] min-w-[130px] truncate px-[10px] bg-[#fff] z-[1] rounded-[5px] border-[1px] border-solid border-[#eee]">
                                        <li class="active border-b-[1px] border-solid border-[#eee] leading-[1.5] py-[5px]">
                                            <a class="dropdown-item p-[7px] text-[14px] bg-transparent" href="#">English</a>
                                        </li>
                                        <li class="leading-[1.5] py-[5px]">
                                            <a class="dropdown-item p-[7px] text-[14px] bg-transparent" href="#">Italiano</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Language End -->
                                <!-- Currency Start -->
                                <div class="header-top-lan-curr header-top-curr dropdown pl-[20px] flex flex-wrap relative">
                                    <button type="button" class="dropdown-toggle text-[13px] flex items-center p-[0] transition-all duration-[0.3s] ease delay-0 text-[#777] border-[0] tracking-[0.7px]">Dollar
                                        <i class="fi-rr-angle-small-down text-[14px] ml-[5px] text-[#777] transition-all duration-[0.3s] ease delay-0 flex"></i>
                                    </button>
                                    <ul class="hidden dropdown-menu absolute top-[32px] left-[auto] right-[0] min-w-[130px] truncate px-[10px] bg-[#fff] z-[1] rounded-[5px] border-[1px] border-solid border-[#eee]">
                                        <li class="active border-b-[1px] border-solid border-[#eee] leading-[1.5] py-[5px]">
                                            <a class="dropdown-item p-[7px] text-[14px] bg-transparent" href="#">USD $</a>
                                        </li>
                                        <li class="leading-[1.5] py-[5px]">
                                            <a class="dropdown-item p-[7px] text-[14px] bg-transparent" href="#">EUR €</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Currency End -->
                            </div>
                        </div>
                        <!-- Header Top Language Currency -->
                        <!-- Header Top responsive Action -->
                        <div class="grow-[1] shrink-[0] basis-[0%] min-[992px]:hidden">
                            <div class="gi-header-bottons flex justify-end">
                                <div class="right-icons flex flex-row">
                                    <!-- Header User Start -->
                                    <a href="login.html" class="gi-header-btn gi-header-user mr-[30px] relative transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-user text-[24px] leading-[17px]"></i>
                                        </div>
                                    </a>
                                    <!-- Header User End -->
                                    <!-- Header Wishlist Start -->
                                    <a href="wishlist.html" class="gi-header-btn gi-wish-toggle mr-[30px] relative transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-heart text-[24px] leading-[17px]"></i>
                                        </div>
                                        <span class="gi-header-count gi-wishlist-count w-[15px] h-[15px] text-[#fff] flex items-center justify-center rounded-[50%] text-[11px] absolute top-[-2px] right-[-6px] opacity-[0.8]">3</span>
                                    </a>
                                    <!-- Header Wishlist End -->
                                    <!-- Header Cart Start -->
                                    <a href="javascript:void(0)" class="gi-header-btn gi-cart-toggle mr-[30px] relative transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-shopping-bag text-[24px] leading-[17px]"></i>
                                            <span class="main-label-note-new"></span>
                                        </div>
                                        <span class="gi-header-count gi-cart-count  w-[15px] h-[15px] text-[#fff] flex items-center justify-center rounded-[50%] text-[11px] absolute top-[-2px] right-[-6px] opacity-[0.8]">3</span>
                                    </a>
                                    <!-- Header Cart End -->
                                    <!-- Header menu Start -->
                                    <a href="javascript:void(0)"
                                       class="gi-header-btn gi-site-menu-icon relative transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center">
                                        <i class="fi-rr-menu-burger text-[24px] leading-[17px]"></i>
                                    </a>
                                    <!-- Header menu End -->
                                </div>
                            </div>
                        </div>
                        <!-- Header Top responsive Action -->
                    </div>
                </div>
            </div>
            <!-- Header Top  End -->
            <!-- Header Bottom  Start -->
            <div class="gi-header-bottom py-[30px] max-[991px]:py-[15px] max-[991px]:border-b-[1px] border-solid border-[#eee]">
                <div class="flex flex-wrap justify-between relative items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                    <div class="w-full flex flex-wrap px-[12px]">
                        <div class="gi-flex flex flex-row justify-between w-full max-[575px]:flex-col">
                            <!-- Header Logo Start -->
                            <div class="self-center gi-header-logo max-[575px]:mb-[15px]">
                                <div class="header-logo text-left">
                                    <a href="home"><img src="assets/img/logo/logo.png" alt="Site Logo" class="w-[144px] max-[1199px]:w-[130px] max-[991px]:w-[120px] max-[767px]:w-[100px] "></a>
                                </div>
                            </div>
                            <!-- Header Logo End -->
                            <!-- Header Search Start -->
                            <div class="self-center gi-header-search my-[0] mx-[auto] max-[991px]:m-0">
                                <div class="header-search w-full min-w-[700px] px-[30px] relative max-[1399px]:min-w-[500px] max-[1199px]:min-w-[400px] max-[991px]:p-0 max-[767px]:min-w-[350px] max-[480px]:min-w-[300px] max-[320px]:min-w-full">
                                    <form class="gi-search-group-form relative flex border-[1px] border-solid border-[#eee] items-center rounded-[5px]" action="#">
                                        <input class="form-control gi-search-bar block w-full min-h-[50px] h-[50px] max-[991px]:h-[40px] max-[991px]:min-h-[40px] px-[15px] text-[13px] font-normal leading-[1] text-[#777] bg-transparent outline-[0] border-[0] tracking-[0.6px]" placeholder="Search Products..." type="text">
                                        <button type="submit" class="search_submit relative flex items-center justify-center w-[48px] h-[40px] basis-[48px]">
                                            <i class="fi-rr-search text-[#4b5966] h-[18px] w-[18px] transition-all duration-[0.3s] ease-in-out"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <!-- Header Search End -->
                            <!-- Header Button Start -->
                            <div class="gi-header-action self-center max-[991px]:hidden">
                                <div class="gi-header-bottons flex justify-end">
                                    <!-- Header User Start -->
                                    <div class="gi-acc-drop relative">
                                        <a href="javascript:void(0)" class="gi-header-btn gi-header-user dropdown-toggle gi-user-toggle mr-[30px] transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center whitespace-nowrap" title="Account">
                                            <div class="header-icon relative flex">
                                                <i class="fi-rr-user text-[24px] leading-[17px]"></i>
                                            </div>
                                            <div class="gi-btn-desc flex flex-col uppercase ml-[10px]">
                                                <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">Account</span>
                                                <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]">Login</span>
                                            </div>
                                        </a>
                                        <ul class="gi-dropdown-menu min-w-[150px] py-[5px] transition-all duration-[0.3s] ease-in-out mt-[25px] absolute z-[16] text-left bg-[#fff] block opacity-0 invisible left-[0] right-[auto] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                            <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="register.html">Register</a></li>
                                            <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="checkout.html">Checkout</a></li>
                                            <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="login.html">Login</a></li>
                                        </ul>
                                    </div>
                                    <!-- Header User End -->
                                    <!-- Header wishlist Start -->
                                    <a href="wishlist.html" class="gi-header-btn gi-wish-toggle mr-[30px] transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center whitespace-nowrap" title="Wishlist">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-heart text-[24px] leading-[17px]"></i>
                                        </div>
                                        <div class="gi-btn-desc flex flex-col uppercase ml-[10px]">
                                            <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">Wishlist</span>
                                            <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]"><b class="gi-wishlist-count">3</b>-items</span>
                                        </div>
                                    </a>
                                    <!-- Header wishlist End -->
                                    <!-- Header Cart Start -->
                                    <a href="javascript:void(0)" class="gi-header-btn gi-cart-toggle transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center whitespace-nowrap" title="Cart">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-shopping-bag text-[24px] leading-[17px]"></i>
                                            <span class="main-label-note-new transition-all duration-[0.3s] ease-in-out h-[10px] w-[10px] m-auto bg-[#ec716d] rounded-[50%] cursor-default hidden absolute bottom-[15px] left-[0] right-[0] z-[3]"></span>
                                        </div>
                                        <div class="gi-btn-desc flex flex-col uppercase ml-[10px]">
                                            <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">Cart</span>
                                            <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]">
                                                <b class="gi-cart-count">3</b>-items
                                            </span>
                                        </div>
                                    </a>
                                    <!-- Header Cart End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Button End -->

            <!-- Header menu -->
            <div class="gi-header-cat transition-all duration-[0.3s] ease-in-out bg-[#fff] border-t-[1px] border-b-[1px] border-solid border-[#eee] hidden min-[992px]:block">
                <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                    <div class="gi-nav-bar flex flex-row justify-between relative w-full px-[12px]">
                        <!-- Category Toggle -->
                        <div class="gi-category-icon-block py-[5px] static">
                            <div class="gi-category-menu relative">
                                <div class="gi-category-toggle w-[200px] min-h-[50px] px-[15px] flex items-center bg-[#4b5966] rounded-[5px] cursor-pointer max-[1199px]:w-auto max-[991px]:border-[0]">
                                    <i class="fi fi-rr-apps text-[18px] text-[#fff] leading-[0]"></i>
                                    <span class="text ml-[10px] text-[15px] text-[#fff] font-medium max-[1199px]:hidden">All Piano</span>
                                    <i class="fi-rr-angle-small-down text-[18px] uppercase text-[#fff] text-center absolute right-[15px] leading-[0] max-[1199px]:hidden" aria-hidden="true"></i>
                                </div>


                            </div>
                            <div class="gi-cat-dropdown transition-all duration-[0.3s] ease-in-out w-[260px] mt-[15px] p-[15px] absolute bg-[#fff] opacity-[0] invisible left-[0] z-[-15] rounded-[5px] border-[1px] border-solid border-[#eee]">
                                <div class="gi-cat-block">
                                    <div class="gi-cat-tab flex">
                                        <ul class="nav-tabs min-w-[230px] bg-[#f8f8fb] p-[15px] rounded-[5px] flex-col justify-center mr-[16px]" id="myTab">
                                            <c:forEach items="${requestScope.categoryList}" var="c">
                                                <li class="transition-all duration-[0.3s] ease-in-out cursor-pointer px-[15px] py-[10px] bg-[#fff] text-[13px] text-[#4b5966] font-medium text-left capitalize border-[1px] border-solid border-[#eee] rounded-[5px] flex items-center mb-[10px]">
                                                    <a href="shop?cid=${c.id}">${c.name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Main Menu Start -->
                        <div id="gi-main-menu-desk" class="w-full flex items-center min-[992px]:block hidden">
                            <div class="nav-desk">
                                <div class="w-full flex flex-wrap px-[12px] min-[1400px]:relative">
                                    <div class="basis-auto w-full self-center">
                                        <div class="gi-main-menu flex">
                                            <ul class="w-full flex justify-center flex-wrap pl-[0]">
                                                <li class="dropdown drop-list relative ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="home" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Home</a>                                               
                                                </li>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="shop?cid=0" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Shop</a>
                                                </li>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="checkout.html" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Checkout</a>
                                                </li>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="track-order.html" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Track Order</a>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="about-us.html" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">About Us</a>
                                                </li>

                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="contact-us.html" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Contact Us</a>
                                                </li>

                                                </li>


                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Main Menu End -->

                    </div>
                </div>
            </div>
            <!-- Header menu End -->

            <!-- Mobile Menu sidebar Start -->
            <div class="gi-mobile-menu-overlay hidden w-full h-screen fixed top-[0] left-[0] bg-[#000000cc] z-[16]"></div>
            <div id="gi-mobile-menu" class="gi-mobile-menu transition-all duration-[0.3s] ease-in-out w-[340px] h-full pt-[15px] pb-[20px] px-[20px] fixed top-[0] right-[auto] left-[0] bg-[#fff] flex flex-col z-[17] overflow-auto max-[480px]:w-[300px]">
                <div class="gi-menu-title w-full pb-[10px] flex flex-wrap justify-between">
                    <span class="menu_title flex items-center text-[16px] text-[#4b5966] font-semibold">My Menu</span>
                    <button type="button" class="gi-close-menu relative text-[30px] leading-[1] text-[#777] bg-transparent border-0 mx-[5px]">×</button>
                </div>
                <div class="gi-menu-inner">
                    <div class="gi-menu-content">
                        <ul>
                            <li class="dropdown relative drop-list">
                                <a href="javascript:void(0)" class="dropdown-arrow mb-[12px] p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Home</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li><a href="index.html" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Grocery</a></li>
                                    <li><a href="demo-2.html" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Fashion</a></li>
                                    <li><a href="demo-3.html" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Fashion 2</a></li>
                                </ul>
                            </li>
                            <li class="relative">
                                <a href="javascript:void(0)" class="dropdown-arrow mb-[12px] p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Categories</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Classic Variation</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="shop-left-sidebar-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Left sidebar 3 column</a></li>
                                            <li><a href="shop-left-sidebar-col-4.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Left sidebar 4 column</a></li>
                                            <li><a href="shop-right-sidebar-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Right sidebar 3 column</a></li>
                                            <li><a href="shop-right-sidebar-col-4.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Right sidebar 4 column</a></li>
                                            <li><a href="shop-full-width.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Full width 4 column</a></li>
                                        </ul>
                                    </li>
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Classic Variation</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="shop-banner-left-sidebar-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner left sidebar 3 column</a></li>
                                            <li><a href="shop-banner-left-sidebar-col-4.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner left sidebar 4 column</a></li>
                                            <li><a href="shop-banner-right-sidebar-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner right sidebar 3 column</a></li>
                                            <li><a href="shop-banner-right-sidebar-col-4.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner right sidebar 4 column</a></li>
                                            <li><a href="shop-banner-full-width.html" class="pl-[30px] py-[12px] text-[14px] block text-[#999] font-normal">Banner Full width 4 column</a></li>
                                        </ul>
                                    </li>
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Columns Variation</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="shop-full-width-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">3 Columns full width</a></li>
                                            <li><a href="shop-full-width-col-4.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">4 Columns full width</a></li>
                                            <li><a href="shop-full-width-col-5.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">5 Columns full width</a></li>
                                            <li><a href="shop-full-width-col-6.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">6 Columns full width</a></li>
                                            <li><a href="shop-banner-full-width-col-3.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner 3 Columns</a></li>
                                        </ul>
                                    </li>
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">List Variation</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="shop-list-left-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Shop left sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Shop right sidebar</a></li>
                                            <li><a href="shop-list-banner-left-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner left sidebar</a></li>
                                            <li><a href="shop-list-banner-right-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Banner right sidebar</a></li>
                                            <li><a href="shop-list-full-col-2.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Full width 2 columns</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="relative">
                                <a href="javascript:void(0)" class="dropdown-arrow mb-[12px] p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Products</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Product page</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="product-left-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Product left sidebar</a></li>
                                            <li><a href="product-right-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">Product right sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="relative">
                                        <a href="javascript:void(0)" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Product accordion</a>
                                        <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                            <li><a href="product-accordion-left-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">left sidebar</a></li>
                                            <li><a href="product-accordion-right-sidebar.html" class="pl-[30px] py-[12px] block text-[14px] text-[#999] font-normal">right sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-full-width.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">product full width</a></li>
                                    <li><a href="product-accordion-full-width.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">accordion full width</a></li>
                                </ul>
                            </li>
                            <li class="dropdown relative">
                                <a href="javascript:void(0)" class="dropdown-arrow mb-[12px] p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Blog</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li><a href="blog-left-sidebar.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog left sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog right sidebar</a></li>
                                    <li><a href="blog-detail-left-sidebar.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog detail left sidebar</a></li>
                                    <li><a href="blog-detail-right-sidebar.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog detail right sidebar</a></li>
                                    <li><a href="blog-full-width.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog full width</a></li>
                                    <li><a href="blog-detail-full-width.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Blog detail full width</a></li>
                                </ul>
                            </li>
                            <li class="relative">
                                <a href="javascript:void(0)" class="dropdown-arrow p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Others</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li><a href="about-us.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">About Us</a></li>
                                    <li><a href="contact-us.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Contact Us</a></li>
                                    <li><a href="cart.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Cart</a></li>
                                    <li><a href="checkout.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Checkout</a></li>
                                    <li><a href="compare.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Compare</a></li>
                                    <li><a href="faq.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">FAQ</a></li>
                                    <li><a href="login.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Login</a></li>
                                    <li><a href="register.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Register</a></li>
                                    <li><a href="track-order.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Track Order</a></li>
                                    <li><a href="terms-condition.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Terms Condition</a></li>
                                    <li><a href="privacy-policy.html" class="mb-[0] pl-[15px] pr-[0] py-[12px] capitalize block text-[14px] font-normal text-[#777]">Privacy Policy</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="header-res-lan-curr">
                        <!-- Social Start -->
                        <div class="header-res-social mt-[30px]">
                            <div class="header-top-social">
                                <ul class="flex flex-row justify-center">
                                    <li class="list-inline-item h-[30px] w-[30px] flex items-center justify-center bg-[#4b5966] rounded-[5px] mr-[15px]">
                                        <a href="#"><i class="gicon gi-facebook text-[#fff]"></i></a>
                                    </li>
                                    <li class="list-inline-item h-[30px] w-[30px] flex items-center justify-center bg-[#4b5966] rounded-[5px] mr-[15px]">
                                        <a href="#"><i class="gicon gi-twitter text-[#fff]"></i></a>
                                    </li>
                                    <li class="list-inline-item h-[30px] w-[30px] flex items-center justify-center bg-[#4b5966] rounded-[5px] mr-[15px]">
                                        <a href="#"><i class="gicon gi-instagram text-[#fff]"></i></a>
                                    </li>
                                    <li class="list-inline-item h-[30px] w-[30px] flex items-center justify-center bg-[#4b5966] rounded-[5px]">
                                        <a href="#"><i class="gicon gi-linkedin text-[#fff]"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Social End -->
                    </div>
                </div>
            </div>
            <!-- Mobile Menu sidebar End -->
        </header>
        <!-- Header End  -->
        <!-- Hero Slider Start -->
        <section class="section gi-hero h-full w-full my-[40px] max-[575px]:my-[30px] max-[1199px]:relative">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="gi-main-content w-full px-[12px]">
                    <!-- Hero Slider Start -->
                    <div class="gi-slider-content h-full">
                        <div class="gi-main-slider">
                            <div class="gi-slider rounded-[5px] swiper-container main-slider-nav main-slider-dot">
                                <!-- Main slider  -->
                                <div class="swiper-wrapper">
                                    <div class="gi-slide-item swiper-slide h-[600px] max-[1399px]:h-[500px] max-[991px]:h-[400px] max-[767px]:h-[300px] max-[575px]:h-[290px] max-[420px]:h-[230px] max-[420px]:bg-center bg-cover flex slide-1">
                                        <div class="gi-slide-content max-w-[33rem] max-[1399px]:max-w-[24rem] max-[1199px]:max-w-[20rem] max-[991px]:max-w-[17rem] max-[767px]:max-w-[14rem] max-[420px]:max-w-[12rem] max-[360px]:max-w-[10rem] ml-[100px] max-[991px]:ml-[70px] max-[767px]:ml-[30px] flex flex-col justify-center relative z-[9] slider-animation">
                                            <p class="mb-[20px] text-[20px] text-[#FFFFFF] leading-[1] tracking-[0] font-medium max-[767px]:text-[16px] max-[360px]:text-[13px]">Starting at $ <b>500.00</b></p>
                                            <h1 class="gi-slide-title mb-[30px] text-[55px] leading-[68px] text-[#FFFFFF] tracking-[0.05rem] font-bold relative max-[1399px]:text-[40px] max-[1399px]:leading-[50px] max-[1199px]:text-[32px] max-[1199px]:leading-[42px] max-[991px]:text-[26px] max-[991px]:leading-[36px] max-[767px]:text-[22px] max-[767px]:leading-[32px] max-[767px]:mb-[20px] max-[420px]:text-[18px] max-[420px]:leading-[28px] max-[360px]:text-[17px] max-[360px]:leading-[27px]">Luxury - Elegance Piano</h1>
                                            <div class="gi-slide-btn block">
                                                <a href="shop?cid=0" class="gi-btn-1 transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] py-[10px] max-[767px]:py-[6px] px-[15px] max-[767px]:px-[10px] bg-[#4b5966] text-[#fff] border-[0] text-[15px] max-[767px]:text-[13px] tracking-[0] font-medium inline-flex items-center hover:bg-[#5caf90] hover:text-[#fff]">Shop Now 
                                                    <i class="fi-rr-angle-double-small-right ml-[5px] text-[#fff] flex" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gi-slide-item swiper-slide h-[600px] max-[1399px]:h-[500px] max-[991px]:h-[400px] max-[767px]:h-[300px] max-[575px]:h-[290px] max-[420px]:h-[230px] max-[420px]:bg-center bg-cover flex slide-2">
                                        <div class="gi-slide-content max-w-[33rem] max-[1399px]:max-w-[24rem] max-[1199px]:max-w-[20rem] max-[991px]:max-w-[17rem] max-[767px]:max-w-[14rem] max-[420px]:max-w-[12rem] max-[360px]:max-w-[10rem] ml-[100px] max-[991px]:ml-[70px] max-[767px]:ml-[30px] flex flex-col justify-center relative z-[9] slider-animation">
                                            <p class="mb-[20px] text-[20px] text-[#FFFFFF] leading-[1] tracking-[0] font-medium max-[767px]:text-[16px] max-[360px]:text-[13px]">Starting at $ <b>500.00</b></p>
                                            <h1 class="gi-slide-title mb-[30px] text-[55px] leading-[68px] text-[#FFFFFF] tracking-[0.05rem] font-bold relative max-[1399px]:text-[40px] max-[1399px]:leading-[50px] max-[1199px]:text-[32px] max-[1199px]:leading-[42px] max-[991px]:text-[26px] max-[991px]:leading-[36px] max-[767px]:text-[22px] max-[767px]:leading-[32px] max-[767px]:mb-[20px] max-[420px]:text-[18px] max-[420px]:leading-[28px] max-[360px]:text-[17px] max-[360px]:leading-[27px]">Authentic - Bliss Piano</h1>
                                            <div class="gi-slide-btn block">
                                                <a href="shop?cid=0" class="gi-btn-1 transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] py-[10px] max-[767px]:py-[6px] px-[15px] max-[767px]:px-[10px] bg-[#4b5966] text-[#fff] border-[0] text-[15px] max-[767px]:text-[13px] tracking-[0] font-medium inline-flex items-center hover:bg-[#5caf90] hover:text-[#fff]">Shop Now 
                                                    <i class="fi-rr-angle-double-small-right ml-[5px] text-[#fff] flex" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination swiper-pagination-white"></div>
                                <div class="swiper-buttons">
                                    <div class="swiper-button-next"></div>
                                    <div class="swiper-button-prev"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Slider End -->

        <!-- Supplier section -->
        <section class="gi-category body-bg py-[40px] max-[767px]:py-[30px] wow fadeInUp" data-wow-duration="2s">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="w-full flex flex-wrap px-[12px] mb-[-15px]">
                    <div class="min-[1200px]:w-full basis-auto max-w-full border-content-color">
                        <div class="gi-category-block owl-carousel flex">
                            <c:forEach items="${requestScope.supplierCountProductList}" var="s">
                                <div class="gi-cat-box transition-all duration-[0.3s] ease-in-out p-[15px] rounded-[5px] relative bg-[#fff6ec]">
                                    <div class="gi-cat-icon h-full p-[15px] flex flex-col items-center justify-center bg-[#fff] relative rounded-[5px] z-[5]">
                                        <img src="${s.key.image}" class="transition-all duration-[0.3s] ease-in-out text-[40px] my-[10px] text-[#5caf90] leading-[0]">
                                        <div class="gi-cat-detail text-center">
                                            <a href="shop?sid=${s.key.id}">
                                                <h4 class="gi-cat-title m-[0] text-[15px] leading-[22px] font-semibold text-[#4b5966] capitalize font-manrope">${s.key.companyName}</h4>
                                            </a>
                                            <p class="items m-[0] text-[13px] leading-[28px] text-[#777]">${s.value} Items</p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Supplier section End -->

        <!--  Day Of The Deal Start -->
        <section class="gi-deal-section py-[40px] max-[767px]:py-[30px] wow fadeInUp" data-wow-duration="2s">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="w-full flex flex-wrap px-[12px] overflow-hidden">
                    <div class="gi-deal-section w-full">
                        <div class="gi-products">
                            <div class="section-title mb-[20px] relative flex justify-between pb-[20px] z-[5] max-[767px]:flex-col" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="200">
                                <div class="section-detail">
                                    <h2 class="gi-title mb-[0] text-[25px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1] font-manrope max-[991px]:text-[24px] max-[767px]:text-[22px] max-[575px]:text-[20px]">Day of the <span class="text-[#5caf90]">deal</span></h2>

                                </div>
                                <div id="dealend" class="dealend-timer max-[767px]:mt-[15px]"></div>
                            </div>
                            <div class="gi-deal-block mx-[-12px]" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="300">
                                <div class="deal-slick-carousel flex gi-product-slider">
                                    <c:forEach items="${requestScope.saleProduct}" var="p">
                                        <div class="gi-product-content h-full px-[12px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product?pid=${p.id}" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>

                                                            <c:if test="${not empty p.image[0]}">                                                                                                   
                                                                <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[0]}" alt="Product">
                                                            </c:if>
                                                            <c:if test="${not empty p.image[1]}">     
                                                                <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[1]}" alt="Product">
                                                            </c:if>
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart" class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="product?pid=${p.id}">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">${p.category.name}</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]">
                                                        <a href="product?pid=${p.id}" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">${p.name}</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <c:forEach var="i" begin="1" end="${p.starRating}" step="1">
                                                                <i class="gicon gi-star fill inline-block text-[#f27d0c] float-left text-[14px] mr-[3px]"></i>
                                                            </c:forEach>
                                                            <c:forEach var="i" begin="${p.starRating + 1}" end="5" step="1">
                                                                <i class="gicon gi-star inline-block text-[#777] float-left text-[14px] mr-[3px]"></i>
                                                            </c:forEach>
                                                        </span>
                                                        <span class="gi-price text-[18px] flex items-center justify-left text-[#4b5966] tracking-[0.4px]">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px] tracking-[0.02rem]">
                                                                $<fmt:formatNumber value="${p.price - p.price * p.discount}" maxFractionDigits="2" minFractionDigits="0" />
                                                            </span>
                                                            <span class="old-price text-[14px] text-[#777] tracking-[0.02rem] line-through">$<fmt:formatNumber value="${p.price}" maxFractionDigits="2" minFractionDigits="0" /></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  Day Of The Deal Start End -->

        <!-- Banner section -->
        <section class="gi-banner py-[40px] max-[767px]:py-[30px] wow fadeInUp" data-wow-duration="2s">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="w-full flex flex-wrap px-[12px]">
                    <div class="w-full">
                        <div class="gi-animated-banner w-full bg-[url('assets/img/banner/1.jpg')] bg-center bg-no-repeat bg-cover overflow-hidden relative rounded-[5px]" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="200">
                            <div class="gi-bnr-detail h-full py-[80px] px-[100px] max-[991px]:p-[50px] max-[420px]:p-[15px] flex flex-col justify-center items-start text-left relative"> <!-- Chỉnh lại từ items-end sang items-start và text-right sang text-left -->
                                <div class="gi-bnr-info">
                                    <h2 class="text-[50px] max-[1399px]:text-[38px] max-[1199px]:text-[30px] max-[991px]:text-[28px] max-[767px]:text-[20px] max-[480px]:text-[18px] font-bold text-[#FFFFFF] leading-[65px] max-[1199px]:leading-[40px] max-[991px]:leading-[35px] max-[767px]:leading-[27px] max-[480px]:leading-[25px] z-[2] relative">Resplendent Piano <br>Supreme Sound</h2>
                                    <h3 class="mt-[15px] mb-[15px] text-[#D0A933] leading-[1.2] font-semibold text-[1.75rem] max-[991px]:text-[20px] max-[767px]:text-[16px] max-[767px]:mt-[5px]">30% off sale</h3>
                                    <a href="shop?cid=0" class="gi-btn-2 mt-[15px] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] py-[5px] max-[767px]:py-[6px] px-[10px] max-[767px]:px-[10px] bg-[#5caf90] text-[#fff] border-[0] text-[14px] max-[767px]:text-[13px] tracking-[0] font-medium inline-flex items-center hover:bg-[#4b5966] hover:text-[#fff]">Shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Banner section End -->

        <!-- New Product tab Area Start -->
        <section class="gi-product-tab gi-products py-[40px] max-[767px]:py-[30px] wow fadeInUp" data-wow-duration="2s">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="gi-tab-title w-full inline-flex justify-between px-[12px] max-[991px]:flex-col">
                    <div class="gi-main-title">
                        <div class="section-title mb-[20px] pb-[20px] flex flex-start">
                            <div class="section-detail">
                                <h2 class="gi-title mb-[0] text-[25px] max-[991px]:text-[24px] max-[767px]:text-[22px] max-[575px]:text-[20px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1] font-manrope tracking-[0.01rem]">New <span class="text-[#5caf90]">Arrivals</span></h2>
                                <p class="max-w-[400px] mt-[10px] text-[14px] text-[#777] leading-[18px] font-light">Shop online for new arrivals and get free shipping!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- New Product -->
                <div class="w-full flex flex-wrap mb-[-24px]">
                    <div class="col">
                        <div class="tab-content" id="myproTabContent">
                            <!-- 1st Product tab start -->
                            <div class="tab-pro-pane" id="all">
                                <div class="w-full flex flex-wrap">
                                    <c:forEach items="${requestScope.newProduct}" var="p">
                                        <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                            <div class="gi-product-content h-full pb-[24px] flex">
                                                <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                    <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                        <div class="gi-pro-image overflow-hidden">
                                                            <a href="product?pid=${p.id}" class="image relative block overflow-hidden pointer-events-none">
                                                                <span class="label veg max-[991px]:hidden">
                                                                    <span class="dot"></span>
                                                                </span>
                                                                <c:if test="${not empty p.image[0]}">                                                                                                                         
                                                                    <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[0]}" alt="Product">
                                                                </c:if>
                                                                <c:if test="${not empty p.image[1]}"> 
                                                                    <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[1]}" alt="Product">
                                                                </c:if>
                                                            </a>
                                                            <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                                <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                            </span>
                                                            <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                                <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                    <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                                <a href="javascript:void(0)" title="Add To Cart"
                                                                   class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                    <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                        <a href="product?pid=${p.id}">
                                                            <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">${p.category.name}</h6>
                                                        </a>
                                                        <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product?pid=${p.id}" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">${p.name}</a></h5>
                                                        <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                            <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                                <c:forEach var="i" begin="1" end="${p.starRating}" step="1">
                                                                    <i class="gicon gi-star fill inline-block text-[#f27d0c] float-left text-[14px] mr-[3px]"></i>
                                                                </c:forEach>
                                                                <c:forEach var="i" begin="${p.starRating + 1}" end="5" step="1">
                                                                    <i class="gicon gi-star inline-block text-[#777] float-left text-[14px] mr-[3px]"></i>
                                                                </c:forEach>
                                                            </span>
                                                            <span class="gi-price text-[18px] flex items-center justify-left text-[#4b5966] tracking-[0.4px]">
                                                                <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px] tracking-[0.02rem]">
                                                                    $<fmt:formatNumber value="${p.price - p.price * p.discount}" maxFractionDigits="2" minFractionDigits="0" />
                                                                </span>
                                                                <span class="old-price text-[14px] text-[#777] tracking-[0.02rem] line-through">$<fmt:formatNumber value="${p.price}" maxFractionDigits="2" minFractionDigits="0" /></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- 1st Product tab end -->
                            <!-- 2nd Product tab start -->
                            <div class="tab-pro-pane" id="snack">
                                <div class="w-full flex flex-wrap">
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/1_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/1_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">chips & fries</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Crunchy
                                                            Triangle Chips Snacks</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$59.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$87.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/2_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/2_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Dried Fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Dates Value
                                                            Pack Pouch</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$78.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$85.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/3_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/3_1.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Dried Fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Californian
                                                            Almonds Value Pack</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$58.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$65.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/4_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/4_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Foods</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Banana
                                                            Chips
                                                            Snacks & Spices</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$45.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$50.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/5_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/5_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Snacks</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Berry &
                                                            Graps
                                                            Mix Snack</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$25.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$35.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/6_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/6_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Dried Fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Mixed Nuts
                                                            Seeds & Berries Pack</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$45.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$56.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/7_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/7_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Foods</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Mixed Nuts
                                                            &
                                                            Almonds Dry Fruits</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$49.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$65.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/8_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/8_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Snacks</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Smoked
                                                            Honey
                                                            Spiced Nuts</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$32.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$45.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label nonveg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/9_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/9_2.jpg"
                                                                 alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Foods</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Roasted
                                                            Almonds, Pumpkin Snacks</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$49.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$65.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px] max-[1199px]:hidden max-[767px]:flex">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/10_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/10_2.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Foods</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Healthy
                                                            Nutmix,
                                                            200g Pack</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star sill text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$28.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$30.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 2nd Product tab end -->
                            <!-- 3rd Product tab start -->
                            <div class="tab-pro-pane" id="fruit">
                                <div class="w-full flex flex-wrap">
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/21_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/21_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh Fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Apple</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">5 pcs</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$10.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$12.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/22_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/22_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh Fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Kamalam
                                                            Fruit</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">3 pcs</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$15.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$17.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/23_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/23_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh Fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Blue
                                                            berry</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">500 g</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$11.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$12.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/24_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/24_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh Fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Cherry</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$20.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$21.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/25_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/25_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Lichi</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">500 g</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$25.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$35.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/26_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/26_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Star
                                                            fruit</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$5.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$6.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/27_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/27_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh fruits</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Guava</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">2 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$10.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$12.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/28_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/28_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Snacks</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Mango -
                                                            Kesar</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">20 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$50.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$55.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/29_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/29_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">fresh fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a
                                                            href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Pineapple</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 psc</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$15.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$16.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px] max-[1199px]:hidden max-[767px]:flex">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/30_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/30_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Fresh fruit</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">banana</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star sill text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">12 psc</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$9.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$10.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 3rd Product tab end -->
                            <!-- 4th Product tab start -->
                            <div class="tab-pro-pane" id="veg">
                                <div class="w-full flex flex-wrap">
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/11_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/11_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Tomato -
                                                            Hybrid</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$5.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$7.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/12_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/12_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Tuber root</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Potato</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">5 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$15.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$17.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/13_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/13_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Tuber root</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Onion -
                                                            Hybrid</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">10 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$25.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$30.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/14_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/14_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Coriander
                                                            Bunch</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">250 g</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$5.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$7.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/15_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/15_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="new px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#5caf90] text-[#fff] tracking-[0.5px] relative rounded-[5px]">New</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Capsicum -
                                                            Red</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">3 pcs</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$2.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$3.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/16_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/16_1.jpg" alt="Product">
                                                        </a>
                                                        <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                            <span class="sale px-[10px] py-[5px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                        </span>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Sweet
                                                            Corn</a>
                                                    </h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">2 pcs</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$6.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$8.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/17_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/17_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Tuber root</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Ginger -
                                                            Organic</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">100 g</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$2.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$3.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/18_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/18_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Lemon -
                                                            Seedless</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$8.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$9.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px]">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label nonveg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/19_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/19_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Eggs</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Farm Eggs -
                                                            Brown</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">3 pcs</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$3.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$5.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="min-[1200px]:w-[20%] min-[768px]:w-[33.33%] min-[576px]:w-[50%] max-[575px]:w-[50%] max-[420px]:w-full px-[12px] max-[1199px]:hidden max-[767px]:flex">
                                        <div class="gi-product-content h-full pb-[24px] flex">
                                            <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                    <div class="gi-pro-image overflow-hidden">
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                            <span class="label veg max-[991px]:hidden">
                                                                <span class="dot"></span>
                                                            </span>
                                                            <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="assets/img/product-images/20_1.jpg"
                                                                 alt="Product">
                                                            <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]"
                                                                 src="assets/img/product-images/20_1.jpg" alt="Product">
                                                        </a>
                                                        <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-0">
                                                            <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group quickview transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] modal-toggle">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]"
                                                               title="Compare">
                                                                <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart"
                                                               class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">Vegetables</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Organic
                                                            fresh Broccoli</a></h5>
                                                    <div class="gi-pro-rat-price mt-[5px] mb-[0] flex flex-col">
                                                        <span class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[3px] float-left mr-[3px]"></i>
                                                            <i class="gicon gi-star sill text-[14px] text-[#777] mr-[3px] float-left mr-[3px]"></i>
                                                            <span class="qty absolute bottom-[0] right-[0] text-[#777] text-[13px]">1 kg</span>
                                                        </span>
                                                        <span class="gi-price">
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] mr-[7px]">$10.00</span>
                                                            <span class="old-price text-[14px] text-[#777] line-through">$11.00</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 4th Product tab end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product tab Area End -->


        <!-- Service Section -->
        <section class="gi-service-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="w-full flex flex-wrap mt-[-12px] mb-[-12px]">
                    <div class="min-[992px]:w-[25%] min-[576px]:w-[50%] w-full p-[12px] wow fadeInUp">
                        <div class="gi-ser-inner transition-all duration-[0.3s] ease delay-[0s] p-[30px] max-[991px]:p-[24px] h-full flex items-center justify-center flex-col text-center bg-[#fff] rounded-[5px] border-[1px] border-solid border-[#eee]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-truck-moving text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="font-Poppins text-[18px] font-medium text-[#4b5966] leading-[1.2] tracking-[0.6px] mb-[10px] max-[575px]:text-[16px]">Free Shipping</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px]">Free shipping on all US order or order above $200</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[576px]:w-[50%] w-full p-[12px] wow fadeInUp" data-wow-delay=".4s">
                        <div class="gi-ser-inner transition-all duration-[0.3s] ease delay-[0s] p-[30px] max-[991px]:p-[24px] h-full flex items-center justify-center flex-col text-center bg-[#fff] rounded-[5px] border-[1px] border-solid border-[#eee]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-hand-holding-seeding text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="font-Poppins text-[18px] font-medium text-[#4b5966] leading-[1.2] tracking-[0.6px] mb-[10px] max-[575px]:text-[16px]">24X7 Support</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px]">Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[576px]:w-[50%] w-full p-[12px] wow fadeInUp" data-wow-delay=".6s">
                        <div class="gi-ser-inner transition-all duration-[0.3s] ease delay-[0s] p-[30px] max-[991px]:p-[24px] h-full flex items-center justify-center flex-col text-center bg-[#fff] rounded-[5px] border-[1px] border-solid border-[#eee]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-badge-percent text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="font-Poppins text-[18px] font-medium text-[#4b5966] leading-[1.2] tracking-[0.6px] mb-[10px] max-[575px]:text-[16px]">30 Days Return</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px]">Simply return it within 30 days for an exchange</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[576px]:w-[50%] w-full p-[12px] wow fadeInUp" data-wow-delay=".8s">
                        <div class="gi-ser-inner transition-all duration-[0.3s] ease delay-[0s] p-[30px] max-[991px]:p-[24px] h-full flex items-center justify-center flex-col text-center bg-[#fff] rounded-[5px] border-[1px] border-solid border-[#eee]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-donate text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="font-Poppins text-[18px] font-medium text-[#4b5966] leading-[1.2] tracking-[0.6px] mb-[10px] max-[575px]:text-[16px]">Payment Secure</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px]">Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Service Section End -->

        <!-- Trending, Top Rated Start -->
        <section class="gi-offer-section overflow-hidden py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="w-full flex flex-wrap">
                    <!-- Banner -->
                    <div class="min-[1200px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] gi-all-product-content wow fadeInUp">
                        <div class="gi-banner-inner h-full p-[0] flex flex-row items-center justify-between rounded-[5px] overflow-hidden">
                            <div class="gi-banner-block w-full h-full bg-[url('assets/img/banner/4.jpg')] bg-center bg-cover bg-no-repeat max-[767px]:h-[450px] max-[767px]:bg-bottom max-[480px]:h-[400px] max-[420px]:h-[350px]">
                            </div>
                        </div>
                    </div>
                    <!-- Trending -->
                    <div class="min-[1200px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] gi-all-product-content max-[767px]:mt-[40px] wow fadeInUp" data-wow-delay=".4s">
                        <div class="w-full">
                            <div class="section-title mb-[0] pb-[15px]">
                                <div class="section-detail">
                                    <h2 class="gi-title mb-[0] text-[25px] max-[991px]:text-[24px] max-[767px]:text-[22px] max-[575px]:text-[20px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1] font-manrope tracking-[0.01rem]">Trending <span class="text-[#5caf90]">Items</span></h2>
                                </div>
                            </div>
                        </div>
                        <div class="gi-trending-slider">
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/10_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize" title="Healthy Nutmix, 200g Pack">Healthy Nutmix, 200g Pack</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$42.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$45.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 5 kg</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/11_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Organic fresh tomato</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$25.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 250 g</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/19_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Coffee with chocolate cream mix pack</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Coffee</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$62.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$65.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 kg</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/25_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Fresh Lichi</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Fruits</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$10.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$11.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 500 g</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/5_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Berry & Graps Mix Snack</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$52.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$55.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/29_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Pineapple</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Fruits</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$20.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 12 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Top Rated -->
                    <div class="min-[1200px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] gi-all-product-content max-[1199px]:mt-[40px] wow fadeInUp" data-wow-delay=".6s">
                        <div class="w-full">
                            <div class="section-title mb-[0] pb-[15px]">
                                <div class="section-detail">
                                    <h2 class="gi-title mb-[0] text-[25px] max-[991px]:text-[24px] max-[767px]:text-[22px] max-[575px]:text-[20px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1] font-manrope tracking-[0.01rem]">Top <span class="text-[#5caf90]">Rated</span></h2>
                                </div>
                            </div>
                        </div>
                        <div class="gi-rated-slider">
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/17_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Ginger - Organic</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$62.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$65.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 kg</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/2_2.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Dates Value Pouch Dates  Pouch</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$56.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$78.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 3 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/23_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Blue berry</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Fruits</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$25.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 250 g</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/13_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Onion - Hybrid</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$20.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 12 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/12_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Potato</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$50.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$55.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 2 pack</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/28_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Mango - Kesar</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Fruits</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$52.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$55.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Top Selling -->
                    <div class="min-[1200px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] gi-all-product-content max-[1199px]:mt-[40px]  wow fadeInUp" data-wow-delay=".8s">
                        <div class="w-full">
                            <div class="section-title mb-[0] pb-[15px]">
                                <div class="section-detail">
                                    <h2 class="gi-title mb-[0] text-[25px] max-[991px]:text-[24px] max-[767px]:text-[22px] max-[575px]:text-[20px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1] font-manrope tracking-[0.01rem]">Top <span class="text-[#5caf90]">Selling</span></h2>
                                </div>
                            </div>
                        </div>
                        <div class="gi-trending-slider">
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/18_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Lemon - Seedless</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$42.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$45.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 5 kg</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/28_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Mango - Kesar</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Fruits</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$62.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$65.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 kg</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/7_2.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Mixed Nuts & Almonds Dry Fruits</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$10.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$11.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 500 g</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/3_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Californian Almonds Value Pack</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$25.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 250 g</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/13_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Onion - Hybrid</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">vegetables</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$20.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$30.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 12 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full gi-all-product-block">
                                <div class="gi-all-product-inner mr-[1px] p-[15px] flex flex-wrap items-center bg-[#fff] border-[1px] border-solid border-[#eee] overflow-hidden relative rounded-[5px]">
                                    <div class="gi-pro-image-outer basis-[70px]">
                                        <div class="gi-pro-image overflow-hidden rounded-[15px]">
                                            <a href="product-left-sidebar.html" class="image">
                                                <img class="main-image w-full" src="assets/img/product-images/5_1.jpg" alt="Product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gi-pro-content w-[calc(100%-70px)] basis-[calc(100%-70px)] pl-[15px]">
                                        <h5 class="gi-pro-title text-[16px] mb-[5px]"><a href="product-left-sidebar.html" class="text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block font-Poppins text-[14px] leading-[24px] font-medium tracking-[0.2px] capitalize">Berry & Graps Mix Snack</a></h5>
                                        <h6 class="gi-pro-stitle text-[#777] whitespace-nowrap overflow-hidden text-ellipsis block text-[13px] leading-[24px] font-normal tracking-[0.3px] capitalize mb-[5px]"><a href="shop-left-sidebar-col-3.html" class="text-[#999] hover:text-[#5caf90]">Driedfruit</a></h6>
                                        <div class="gi-pro-rat-price">
                                            <div class="gi-pro-rat-pri-inner">
                                                <span class="gi-price text-[14px] flex items-center text-[#5caf90]">
                                                    <span class="new-price text-[#4b5966] font-bold text-[14px]">$52.00</span>
                                                    <span class="old-price text-[12px] line-through text-[#777] ml-[9px]">$55.00</span>
                                                    <span class="qty text-[12px] text-[#777] ml-[9px] hidden">- 1 pcs</span>
                                                </span>
                                            </div>
                                        </div>
                                        <a href="javascript:void(0)" class="add-to-cart w-[30px] h-[30px] absolute bottom-[10px] right-[10px] bg-[#fff] rounded-[3px] border-[1px] border-solid border-[#eee] flex items-center justify-center opacity-[0] max-[991px]:opacity-[1]" title="Add To Cart">
                                            <i class="fi-rr-shopping-basket text-[18px] text-[#777] leading-[0]"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Trending, Top Rated End -->



               <!-- Footer Start -->
        <footer class="gi-footer bg-[#fff] border-t-[1px] border-solid border-[#eee] mt-[40px]">
            <div class="footer-container">
                <div class="footer-top pt-[80px] pb-0 max-[767px]:pt-[60px] max-[767px]:pb-0">
                    <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                        <div class="w-full flex flex-wrap">
                            <div class="min-[992px]:w-[25%] px-[12px] w-full gi-footer-cat wow fadeInUp">
                                <div class="gi-footer-widget gi-footer-company flex flex-col">
                                    <img src="assets/img/logo/logo.png" class="gi-footer-logo max-w-[144px] max-[767px]:max-w-[130px] " alt="footer logo">
                                    <p class="gi-footer-detail max-w-[400px] mb-[30px] p-[0] text-[14px] leading-[27px] font-normal text-[#777] inline-block relative max-[1199px]:text-[14px]">Golden Finger - The ultimate destination for piano lovers! We offer premium pianos with exceptional sound, elegant designs, and competitive prices.
                                        Enjoy a seamless online shopping experience with doorstep delivery, bringing music closer to you!</p>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-info wow fadeInUp" data-wow-delay="0.2s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Category</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <c:forEach items="${requestScope.categoryList}" var="c" >
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="shop?cid=${c.id}" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">${c.name}</a>
                                            </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-account wow fadeInUp" data-wow-delay="0.3s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Company</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="about-us.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">About us</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="track-order.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Delivery</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="privacy-policy.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Legal Notice</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="terms-condition.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Terms & conditions</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="checkout.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Secure payment</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center">
                                                <a href="contact-us.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Contact us</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-service wow fadeInUp" data-wow-delay="0.4s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Account</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="register.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Sign In</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="cart.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">View Cart</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="privacy-policy.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Return Policy</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="#" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Become a Vendor</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="#" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Affiliate Program</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center">
                                                <a href="checkout.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Payments</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[25%] gi-footer-toggle px-[12px] w-full gi-footer-cont-social mb-[-20px] wow fadeInUp" data-wow-delay="0.5s">
                                <div class="gi-footer-contact mb-[30px] max-[991px]:mb-[0]">
                                    <div class="gi-footer-widget">
                                        <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Contact</h4>
                                        <div class="gi-footer-links gi-footer-dropdown">
                                            <ul class="align-itegi-center">
                                                <li class="gi-footer-link gi-foo-location m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-rr-marker location leading-[0] text-[18px] mt-[5px] h-[25px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <p class="m-[0] text-[14px] font-normal text-[#777]">Khu cong nghe cao Hoa Lac - Km29, ĐCT08, Thach Hoa, Thach That, Ha Noi, Viet Nam</p>
                                                </li>
                                                <li class="gi-footer-link gi-foo-call m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-brands-whatsapp leading-[0] text-[18px] h-[20px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <a href="tel:+009876543210" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">0982226376</a>
                                                </li>
                                                <li class="gi-footer-link gi-foo-mail m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-rr-envelope leading-[0] text-[18px] h-[20px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <a href="mailto:example@email.com" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">nhudinhnhat2004@gmail.com</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-footer-social">
                                    <div class="gi-footer-widget">
                                        <div class="gi-footer-links gi-footer-dropdown">
                                            <ul class="align-itegi-center flex flex-wrap">
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-facebook text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-twitter text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-linkedin text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-instagram text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Area End -->




        <!-- Plugins JS -->
        <script src="assets/js/plugins/jquery-3.7.1.min.js"></script>
        <script src="assets/js/plugins/popper.min.js"></script>
        <script src="assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="assets/js/plugins/fontawesome.js"></script>
        <script src="assets/js/plugins/owl.carousel.min.js"></script>
        <script src="assets/js/plugins/countdownTimer.js"></script>
        <script src="assets/js/plugins/infiniteslidev2.js"></script>
        <script src="assets/js/plugins/jquery.zoom.min.js"></script>
        <script src="assets/js/plugins/slick.min.js"></script>
        <script src="assets/js/plugins/nouislider.js"></script>
        <script src="assets/js/plugins/wow.js"></script>

        <!-- Main Js -->
        <script src="assets/js/main.js"></script>
        <script src="assets/js/demo-1.js"></script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:02:52 GMT -->
</html>
