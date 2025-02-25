<%-- 
    Document   : product
    Created on : Feb 17, 2025, 3:14:31 PM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/product-full-width.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:23 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Product</title>
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


        <!-- Breadcrumb start -->
        <div class="gi-breadcrumb mb-[40px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <div class="flex flex-wrap m-0 p-[15px] border-[1px] border-solid border-[#eee] rounded-b-[5px] border-t-[0] gi_breadcrumb_inner">
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Product Page</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="index.html" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Product Page</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Sart Single Product -->
        <section class="gi-single-product py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="flex flex-wrap w-full px-[12px]">
                    <div class="gi-pro-rightside gi-common-rightside w-full">
                        <!-- Single product content Start -->
                        <div class="single-pro-block">
                            <div class="single-pro-inner">
                                <div class="flex flex-wrap w-full">
                                    <div class="single-pro-img single-pro-img-no-sidebar w-[40%] max-[991px]:w-full relative pr-[12px] max-[991px]:pl-[12px] max-[991px]:w-full max-[991px]:max-w-[500px] max-[991px]:m-auto max-[420px]:px-[0]">
                                        <div class="single-product-scroll p-[15px] sticky top-[30px] rounded-[5px] border-[1px] border-solid border-[#eee]">
                                            <div class="single-product-cover overflow-hidden cursor-zoom-in rounded-[5px]">
                                                <c:set var="p" value="${requestScope.product}"/>
                                                <div class="single-slide zoom-image-hover">
                                                    <c:if test="${not empty p.image[0]}">
                                                        <img class="img-responsive h-full w-full" src="${p.image[0]}" alt="">
                                                    </c:if>
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <c:if test="${not empty p.image[1]}">
                                                        <img class="img-responsive h-full w-full" src="${p.image[2]}" alt="">
                                                    </c:if>
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <c:if test="${not empty p.image[2]}">
                                                        <img class="img-responsive h-full w-full" src="${p.image[2]}" alt="">
                                                    </c:if>
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <c:if test="${not empty p.image[0]}">
                                                        <img class="img-responsive h-full w-full" src="${p.image[0]}" alt="">
                                                    </c:if>
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <c:if test="${not empty p.image[1]}">
                                                        <img class="img-responsive h-full w-full" src="${p.image[1]}" alt="">
                                                    </c:if>
                                                </div>


                                            </div>
                                            <div class="single-nav-thumb w-full overflow-hidden">
                                                <c:if test="${not empty p.image[0]}">
                                                    <div class="single-slide px-[11px] pt-[11px]">
                                                        <img class="img-responsive h-full w-full border-[1px] border-solid border-transparent transition-all duration-[0.3s] ease delay-[0s] cursor-pointer rounded-[5px]" src="${p.image[0]}" alt="">
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty p.image[1]}">
                                                    <div class="single-slide px-[11px] pt-[11px]">
                                                        <img class="img-responsive h-full w-full border-[1px] border-solid border-transparent transition-all duration-[0.3s] ease delay-[0s] cursor-pointer rounded-[5px]" src="${p.image[1]}" alt="">
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty p.image[2]}">
                                                    <div class="single-slide px-[11px] pt-[11px]">
                                                        <img class="img-responsive h-full w-full border-[1px] border-solid border-transparent transition-all duration-[0.3s] ease delay-[0s] cursor-pointer rounded-[5px]" src="${p.image[2]}" alt="">
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty p.image[0]}">
                                                    <div class="single-slide px-[11px] pt-[11px]">
                                                        <img class="img-responsive h-full w-full border-[1px] border-solid border-transparent transition-all duration-[0.3s] ease delay-[0s] cursor-pointer rounded-[5px]" src="${p.image[0]}" alt="">
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty p.image[1]}">
                                                    <div class="single-slide px-[11px] pt-[11px]">
                                                        <img class="img-responsive h-full w-full border-[1px] border-solid border-transparent transition-all duration-[0.3s] ease delay-[0s] cursor-pointer rounded-[5px]" src="${p.image[1]}" alt="">
                                                    </div>
                                                </c:if>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-pro-desc single-pro-desc-no-sidebar w-[60%] max-[991px]:w-full relative pl-[12px] max-[991px]:pl-[0] max-[991px]:mt-[30px] max-[991px]:w-full">
                                        <div class="single-pro-content">
                                            <h5 class="gi-single-title text-[#4b5966] text-[22px] capitalize mb-[20px] block font-Poppins font-medium leading-[35px] tracking-[0.02rem] max-[1199px]:text-[20px] max-[1199px]:leading-[33px] max-[767px]:text-[18px] max-[767px]:text-[18px] max-[767px]:leading-[31px]">${p.name}</h5>
                                            <div class="gi-single-rating-wrap flex mb-[14px] items-center">
                                                <div class="gi-single-rating pr-[15px] leading-[17px]">
                                                    <c:forEach var="i" begin="1" end="${p.starRating}" step="1">
                                                        <i class="gicon gi-star fill inline-block text-[#f27d0c] float-left text-[14px] mr-[3px]"></i>
                                                    </c:forEach>
                                                    <c:forEach var="i" begin="${p.starRating + 1}" end="5" step="1">
                                                        <i class="gicon gi-star inline-block text-[#777] float-left text-[14px] mr-[3px]"></i>
                                                    </c:forEach>
                                                </div>
                                                <!--<span class="gi-read-review text-[#999] leading-[17px]">
                                                |&nbsp;&nbsp;<a href="#gi-spt-nav-review" class="text-[#999] text-[14px] leading-[20px] hover:text-[#5caf90]">992 Ratings</a>
                                               </span>-->
                                            </div>
                                            <div class="gi-single-price-stoke mb-[15px] pt-[15px] pb-[15px] flex justify-between">
                                                <div class="gi-single-price flex flex-col">
                                                    <div class="final-price mb-[15px] text-[#4b5966] font-semibold text-[22px] leading-[32px] font-Poppins tracking-[0] max-[1199px]:text-[20px]">$<fmt:formatNumber value="${p.price - p.price * p.discount}" maxFractionDigits="2" minFractionDigits="0" />
                                                        <span class="price-des ml-[15px] text-[#5caf90] font-medium text-[18px] tracking-[0.02rem]">-<fmt:formatNumber value="${p.discount * 100}" maxFractionDigits="0" minFractionDigits="0" />%</span>
                                                    </div>
                                                    <div class="mrp text-[#777]"><span class="text-[#999] line-through">$<fmt:formatNumber value="${p.price}" maxFractionDigits="2" minFractionDigits="0" /></span></div>
                                                </div>
                                                <div class="gi-single-stoke flex flex-col">                                                    
                                                    <c:if test="${p.unitInStock > 0}">
                                                        <span class="gi-single-ps-title leading-[1] text-[16px] text-[#5caf90] tracking-[0]">IN STOCK</span>
                                                    </c:if>
                                                    <c:if test="${p.unitInStock <= 0}">
                                                        <span class="gi-single-ps-title leading-[1] text-[16px] text-[#D40000] tracking-[0]">OUT OF STOCK</span>
                                                    </c:if>

                                                </div>

                                            </div>
                                            <div class="gi-single-list">
                                                <ul class="mb-[30px] pl-[18px]">
                                                    <li class="my-[10px] text-[#777] text-[14px] list-circle"><strong class="font-semibold">Warranty :</strong> ${p.warranty}</li>
                                                    <li class="my-[10px] text-[#777] text-[14px] list-circle"><strong class="font-semibold">Include :</strong> ${p.include}</li>

                                                </ul>
                                            </div>    
                                            <div class="gi-single-desc mb-[12px] text-[#777] text-[14px] tracking-[0] break-all leading-[26px] font-Poppins">
                                                ${p.describe}
                                            </div>
                                            </br>

                                            <div class="gi-single-qty flex flex-wrap w-full m-[-5px]">
                                                <div class="qty-plus-minus w-[120px] h-[40px] p-[10px] border-[1px] border-solid border-[#eee] overflow-hidden m-[5px] relative flex items-center justify-between rounded-[5px]">
                                                    <input class="qty-input" type="text" name="ms_qtybtn" value="1">
                                                </div>
                                                <div class="gi-single-cart">
                                                    <button type="button" class="btn btn-primary gi-btn-1 flex h-[40px] leading-[50px] text-center text-[14px] m-[5px] py-[10px] px-[15px] uppercase justify-center bg-[#4b5966] text-[#fff] transition-all duration-[0.3s] ease-in-out relative rounded-[5px] items-center min-w-[160px] font-semibold tracking-[0.02rem] border-[0] hover:bg-[#5caf90] hover:text-[#fff]">Add To Cart</button>
                                                </div>
                                                <div class="gi-single-wishlist m-[5px]">
                                                    <a class="gi-btn-group wishlist w-[40px] h-[40px] flex items-center justify-center transition-all duration-[0.3s] ease delay-[0s] text-[#17181c] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:text-[#fff] hover:bg-[#5caf90] hover:border-[#5caf90]" title="Wishlist">
                                                        <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#4b5966] leading-[0]"></i>
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Single product content End -->

                        <!-- Single product tab start -->
                        <div class="gi-single-pro-tab mt-[40px]">
                            <div class="gi-single-pro-tab-wrapper flex flex-col">
                                <div class="gi-single-pro-tab-nav w-full m-auto relative block text-center float-left">
                                    <ul class="nav-tabs inline-block float-left" id="singleprotab">
                                        <li class="mr-[5px] ml-auto mb-[5px] inline-block float-left">
                                            <a href="#gi-spt-nav-info" class="capitalize leading-[24px] py-[8px] px-[28px] m-[0] text-[15px] font-medium relative transition-all duration-[300ms] linear inline-block cursor-pointer bg-[#fff] text-[#4b5966] border-[1px] border-solid border-[#eee] rounded-[5px] leading-[0] hover:bg-[#5caf90] hover:text-[#fff] hover:border-[#5caf90]">
                                                Specifications
                                            </a>
                                        </li>
                                        <li class="mr-[5px] ml-auto mb-[5px] inline-block float-left">
                                            <a href="#gi-spt-nav-vendor" class="capitalize leading-[24px] py-[8px] px-[28px] m-[0] text-[15px] font-medium relative transition-all duration-[300ms] linear inline-block cursor-pointer bg-[#fff] text-[#4b5966] border-[1px] border-solid border-[#eee] rounded-[5px] leading-[0] hover:bg-[#5caf90] hover:text-[#fff] hover:border-[#5caf90]">
                                                Vendor
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content transition-all w-full overflow-hidden bg-[#fff] text-left p-[30px] border-[1px] border-solid border-[#eee] text-[#202020] text-[18px] tracking-[0] leading-[1.6] rounded-[5px]" id="singleTabContent"> 
                                    <div id="gi-spt-nav-info" class="tab-single-pane">
                                        <div class="gi-single-pro-tab-moreinfo">
                                            <p class="font-Poppins text-[#777] text-[14px] font-normal leading-[28px] mb-[16px]">${p.describe}
                                            </p>
                                            <ul class="pl-[24px]">
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Model</span>${p.name}</li>
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Type</span>${requestScope.category.name}</li>
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Weight</span>${p.weight}</li>
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Dimensions</span>${p.dimensions} cm</li>
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Speaker Power</span>${(p.speakerPower == null) ? 'None' : p.speakerPower}</li>
                                                <li class="list-disc mb-[4px] text-[15px] text-[#777] tracking-[0.02rem] leading-[1.6] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">MFG Date</span>${p.releaseDate}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="gi-spt-nav-vendor" class="tab-single-pane">
                                        <div class="gi-single-pro-tab-moreinfo">
                                            <div class="gi-product-vendor">
                                                <div class="gi-vendor-info mb-[15px] flex flex-row">
                                                    <span>
                                                        <img src="${requestScope.supplier.image}" alt="vendor" class="w-[80px] mr-[15px] border-[1px] border-solid border-[#eee]">
                                                    </span>
                                                    <div> 
                                                        <h5 class="text-[15px] font-semibold text-[#4b5966]">${requestScope.supplier.companyName}</h5>
                                                        <p class="text-[#777] font-Poppins text-[14px] font-normal leading-[28px]">${requestScope.supplier.country}</p>
                                                        <p class="text-[#777] font-Poppins text-[14px] font-normal leading-[28px]">${requestScope.supplier.contactName}</p>
                                                    </div>
                                                </div>

                                                <div class="gi-detail">
                                                    <ul class="mb-[15px] pl-[24px]">
                                                        <li class="mb-[4px] text-[15px] list-disc text-[#777] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Country :</span> ${requestScope.supplier.country}</li>
                                                        <li class="mb-[4px] text-[15px] list-disc text-[#777] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Phone :</span> ${requestScope.supplier.phone}</li>
                                                        <li class="mb-[4px] text-[15px] list-disc text-[#777] max-[575px]:mb-[10px]"><span class="mr-[25px] min-w-[150px] text-[15px] text-[#4b5966] inline-block font-medium tracking-[0.02rem] max-[575px]:w-full">Home page :</span><a href="${requestScope.supplier.homePage}" target="_blank">${requestScope.supplier.homePage}</a></li>
                                                    </ul>                                                 
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                
                                </div>
                            </div>
                        </div>
                        <!-- product details description area end -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Single Product -->

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


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/product-full-width.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:23 GMT -->
</html>
