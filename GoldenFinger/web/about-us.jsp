<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/about-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:24 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>About Us</title>
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
            <div class="header-top py-[10px] text-[#777] bg-[#f8f8fb] header-top block max-[767px]:block min-[768px]:hidden">
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
                                            <a class="dropdown-item p-[7px] text-[14px] bg-transparent" href="#">EUR â¬</a>
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
                                    <a href="wishlist.jsp" class="gi-header-btn gi-wish-toggle mr-[30px] relative transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center">
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
                                    <a href="index.jsp"><img src="assets/img/logo/logo.png" alt="Site Logo" class="w-[144px] max-[1199px]:w-[130px] max-[991px]:w-[120px] max-[767px]:w-[100px] "></a>
                                </div>
                            </div>
                            <!-- Header Logo End -->
                            <!-- Header Search Start -->
                            <div class="self-center gi-header-search my-[0] mx-[auto] max-[991px]:m-0">
                                <div class="header-search w-full min-w-[700px] px-[30px] relative max-[1399px]:min-w-[500px] max-[1199px]:min-w-[400px] max-[991px]:p-0 max-[767px]:min-w-[350px] max-[480px]:min-w-[300px] max-[320px]:min-w-full">
                                    <form class="gi-search-group-form relative flex border-[1px] border-solid border-[#eee] items-center rounded-[5px]" action="search" method="post">
                                        <input name ="txt" value="${txtS}" class="form-control gi-search-bar block w-full min-h-[50px] h-[50px] max-[991px]:h-[40px] max-[991px]:min-h-[40px] px-[15px] text-[13px] font-normal leading-[1] text-[#777] bg-transparent outline-[0] border-[0] tracking-[0.6px]" placeholder="Search Products..." type="text">
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
                                                <c:if test="${sessionScope.account != null}">
                                                    <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">${sessionScope.account.fullName}</span>
                                                    <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]">
                                                        See more<i class="fi-rr-angle-small-down text-[18px] uppercase text-[#4B5966] text-center absolute  leading-[0] max-[1199px]:hidden" aria-hidden="true"></i>
                                                    </span>
                                                </c:if>
                                                <c:if test="${sessionScope.account == null}">
                                                    <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">GUEST</span>
                                                    <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]">
                                                        See more<i class="fi-rr-angle-small-down text-[18px] uppercase text-[#4B5966] text-center absolute  leading-[0] max-[1199px]:hidden" aria-hidden="true"></i>
                                                    </span>
                                                </c:if>
                                            </div>
                                        </a>
                                        <ul class="gi-dropdown-menu min-w-[150px] py-[5px] transition-all duration-[0.3s] ease-in-out mt-[25px] absolute z-[16] text-left bg-[#fff] block opacity-0 invisible left-[0] right-[auto] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                            <c:if test="${sessionScope.account != null && sessionScope.account.roleId == 1}">
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="logout">Log out</a></li>
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="checkout.html">Checkout</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.account != null && sessionScope.account.roleId == 2}">
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="admin">Management</a></li>
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="checkout.html">Checkout</a></li>
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="logout">Log out</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.account == null}">
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="login">Log in</a></li>
                                                <li><a class="dropdown-item py-[10px] px-[20px] block w-full font-normal text-[13px] text-[#777] hover:bg-transparent hover:text-[#5caf90]" href="register">Register</a></li>
                                                </c:if>

                                        </ul>
                                    </div>
                                    <!-- Header User End -->
                                    <!-- Header wishlist Start -->
                                    <a href="wishlist" class="gi-header-btn gi-wish-toggle mr-[30px] transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center whitespace-nowrap" title="Wishlist">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-heart text-[24px] leading-[17px]"></i>
                                        </div>
                                        <div class="gi-btn-desc flex flex-col uppercase ml-[10px]">
                                            <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">Wishlist</span>
                                            <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]"><b class="gi-wishlist-count">${sizeWishlist != null ? sizeWishlist : 0}</b>-items</span>
                                        </div>
                                    </a>
                                    <!-- Header wishlist End -->
                                    <!-- Header Cart Start -->
                                    <a href="cart" class="gi-header-btn gi-cart-toggle transition-all duration-[0.3s] ease-in-out relative flex text-[#4b5966] w-[auto] items-center whitespace-nowrap" title="Cart">
                                        <div class="header-icon relative flex">
                                            <i class="fi-rr-shopping-bag text-[24px] leading-[17px]"></i>
                                            <span class="main-label-note-new transition-all duration-[0.3s] ease-in-out h-[10px] w-[10px] m-auto bg-[#ec716d] rounded-[50%] cursor-default hidden absolute bottom-[15px] left-[0] right-[0] z-[3]"></span>
                                        </div>
                                        <div class="gi-btn-desc flex flex-col uppercase ml-[10px]">
                                            <span class="gi-btn-title transition-all duration-[0.3s] ease-in-out text-[12px] leading-[1] text-[#777] mb-[6px] tracking-[0.6px] capitalize font-medium">Cart</span>
                                            <span class="gi-btn-stitle transition-all duration-[0.3s] ease-in-out text-[13px] font-medium text-[#4b5966] leading-[14px] max-[1199px]:text-[11px] max-[1199px]:min-w-[48px]">
                                                <b class="gi-cart-count">${requestScope.sizeCart}</b>-items
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

            <!-- Header menu  -->
            <div class="gi-header-cat transition-all duration-[0.3s] ease-in-out bg-[#fff] border-t-[1px] border-b-[1px] border-solid border-[#eee] hidden min-[992px]:block">
                <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                    <div class="gi-nav-bar flex flex-row justify-between relative w-full px-[12px]">
                        <!-- Category Toggle START-->
                        <div class="gi-category-icon-block py-[5px] static">
                            <div class="gi-category-menu relative">
                                <div class="gi-category-toggle w-[200px] min-h-[50px] px-[15px] flex items-center bg-[#4b5966] rounded-[5px] cursor-pointer max-[1199px]:w-auto max-[991px]:border-[0]">
                                    <i class="fi fi-rr-apps text-[18px] text-[#fff] leading-[0]"></i>
                                    <span class="text ml-[10px] text-[15px] text-[#fff] font-medium max-[1199px]:hidden">
                                        <a href="shop">All Piano</a>
                                    </span>
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
                        <!-- Category Toggle END-->
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
                                                    <a href="shop" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Shop</a>
                                                </li>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="checkout.jsp" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Checkout</a>
                                                </li>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="track-order.jsp" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Track Order</a>
                                                <li class="dropdown drop-list static ml-[20px] mr-[30px] transition-all duration-[0.3s] ease-in-out max-[1199px]:ml-[15px]">
                                                    <a href="contactus" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">Contact Us</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Main Menu End -->

                        <div class="gi-location-block py-[5px]">
                            <div class="gi-location-menu transition-all duration-[0.3s] ease-in-out relative">
                                <div class="gi-location-toggle w-[200px] min-h-[50px] px-[15px] flex items-center bg-[#5caf90] rounded-[5px] cursor-pointer">
                                    <i class="fi fi-rr-marker location text-[#fff] text-[18px] leading-[0]"></i>
                                    <span class="gi-location-title gi-location w-[calc(100%-30px)] px-[10px] text-[15px] text-[#fff] font-medium tracking-[0.2px] whitespace-nowrap truncate">Hà Nội</span>
                                    <i class="fi-rr-angle-small-down gi-angle text-[18px] uppercase text-[#fff] text-center absolute right-[15px] leading-[0]" aria-hidden="true"></i>
                                </div>
                                <div class="gi-location-content transition-all duration-[0.3s] ease-in-out w-[200px] py-[15px] px-[13px] mt-[15px] block absolute invisible left-auto right-0 top-[100%] rounded-[5px] z-[14] border-[1px] border-solid border-[#eee] bg-[#fff] overflow-auto">
                                    <div class="gi-location-dropdown">
                                        <div class="w-full flex flex-wrap gi-location-wrapper">
                                            <ul class="loc-grid w-full">
                                                <li class="loc-list current w-full p-[10px] relative flex items-center flex-row justify-left text-[13px] font-medium capitalize border-[1px] border-solid border-[#eee] rounded-[5px] cursor-pointer hover:border-[#5caf90] hover:text-[#5caf90] mb-[10px]">
                                                    <i class="fi fi-rr-map-marker-plus text-[14px] mr-[10px] text-[#777] leading-[0]"></i>
                                                    <span class="gi-detail gi-detail-current w-[calc(100%-30px)] block truncate text-[#4b5966]">Hà Nội</span>
                                                </li>
                                                <li class="loc-list current w-full p-[10px] relative flex items-center flex-row justify-left text-[13px] font-medium capitalize border-[1px] border-solid border-[#eee] rounded-[5px] cursor-pointer hover:border-[#5caf90] hover:text-[#5caf90] mb-[10px]">
                                                    <i class="fi fi-rr-map-marker-plus text-[14px] mr-[10px] text-[#777] leading-[0]"></i>
                                                    <span class="gi-detail gi-detail-current w-[calc(100%-30px)] block truncate text-[#4b5966]">Thành Phố Hồ Chí Minh</span>
                                                </li>
                                                <li class="loc-list current w-full p-[10px] relative flex items-center flex-row justify-left text-[13px] font-medium capitalize border-[1px] border-solid border-[#eee] rounded-[5px] cursor-pointer hover:border-[#5caf90] hover:text-[#5caf90] mb-[10px]">
                                                    <i class="fi fi-rr-map-marker-plus text-[14px] mr-[10px] text-[#777] leading-[0]"></i>
                                                    <span class="gi-detail gi-detail-current w-[calc(100%-30px)] block truncate text-[#4b5966]">Thái Bình</span>
                                                </li>
                                                <li class="loc-list current w-full p-[10px] relative flex items-center flex-row justify-left text-[13px] font-medium capitalize border-[1px] border-solid border-[#eee] rounded-[5px] cursor-pointer hover:border-[#5caf90] hover:text-[#5caf90] mb-[10px]">
                                                    <i class="fi fi-rr-map-marker-plus text-[14px] mr-[10px] text-[#777] leading-[0]"></i>
                                                    <span class="gi-detail gi-detail-current w-[calc(100%-30px)] block truncate text-[#4b5966]">Đà Nẵng</span>
                                                </li>
                                                <li class="loc-list current w-full p-[10px] relative flex items-center flex-row justify-left text-[13px] font-medium capitalize border-[1px] border-solid border-[#eee] rounded-[5px] cursor-pointer hover:border-[#5caf90] hover:text-[#5caf90] mb-[10px]">
                                                    <i class="fi fi-rr-map-marker-plus text-[14px] mr-[10px] text-[#777] leading-[0]"></i>
                                                    <span class="gi-detail gi-detail-current w-[calc(100%-30px)] block truncate text-[#4b5966]">Nghệ An</span>
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
            <!-- Header menu End -->

            <!-- Mobile Menu sidebar Start -->
            <div class="gi-mobile-menu-overlay hidden w-full h-screen fixed top-[0] left-[0] bg-[#000000cc] z-[16]"></div>
            <div id="gi-mobile-menu" class="gi-mobile-menu transition-all duration-[0.3s] ease-in-out w-[340px] h-full pt-[15px] pb-[20px] px-[20px] fixed top-[0] right-[auto] left-[0] bg-[#fff] flex flex-col z-[17] overflow-auto max-[480px]:w-[300px]">
                <div class="gi-menu-title w-full pb-[10px] flex flex-wrap justify-between">
                    <span class="menu_title flex items-center text-[16px] text-[#4b5966] font-semibold">My Menu</span>
                    <button type="button" class="gi-close-menu relative text-[30px] leading-[1] text-[#777] bg-transparent border-0 mx-[5px]">Ã</button>
                </div>
                <div class="gi-menu-inner">
                    <div class="gi-menu-content">
                        <ul>
                            <li class="dropdown relative drop-list">
                                <a href="javascript:void(0)" class="dropdown-arrow mb-[12px] p-[12px] block capitalize text-[#777] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] font-medium">Home</a>
                                <ul class="sub-menu w-full min-w-[auto] p-0 mb-[10px] static hidden visible transition-none opacity-[1]">
                                    <li><a href="index.jsp" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Grocery</a></li>
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

        <!-- Cart sidebar Start -->
        <div class="gi-side-cart-overlay w-full h-screen fixed top-[0] left-[0] bg-[#000000cc] z-[17] hidden"></div>
        <div id="gi-side-cart" class="gi-side-cart w-[350px] max-[480px]:w-[300px] h-full pt-[15px] px-[20px] text-[14px] font-normal fixed z-[17] top-[0] right-0 left-auto block transition-all duration-[0.5s] ease delay-0 bg-[#fff] overflow-auto">
            <div class="gi-cart-inner relative z-[9] flex flex-col h-full justify-between">
                <div class="gi-cart-top">
                    <div class="gi-cart-title w-full flex flex-wrap justify-between">
                        <span class="cart_title text-[15px] text-[#4b5966] font-Poppins font-semibold mb-[20px]">My Cart</span>
                        <a href="javascript:void(0)" class="gi-cart-close relative border-[0] text-[30px] leading-[20px] text-[#4b5966]">
                            <i class="fi-rr-cross-small text-[20px] leading-[0]"></i>
                        </a>
                    </div>
                    <ul class="gi-cart-pro-items">
                        <li class="mb-[15px] p-[15px] flex overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <a href="product-left-sidebar.html" class="gi-pro-img flex grow-[1] basis-[20%] items-center"><img src="assets/img/product-images/25_1.jpg" class="w-full" alt="product"></a>
                            <div class="gi-pro-content relative grow-[1] basis-[70%] pl-[15px] overflow-hidden">
                                <a href="product-left-sidebar.html" class="cart-pro-title w-full pr-[30px] text-[#777] whitespace-normal overflow-hidden text-ellipsis block text-[15px] leading-[18px] font-normal">Fresh Lichi</a>
                                <span class="cart-price text-[14px] block mt-[5px]"><span class="text-[#777] font-semibold text-[16px]">$25.00</span> x 1 kg</span>
                                <div class="qty-plus-minus border-[1px] border-solid border-[#eee] h-[35px] overflow-hidden relative w-[85px] flex items-center justify-between py-[7px] mt-[7px]">
                                    <input class="qty-input" type="text" name="gi-qtybtn" value="1">
                                </div>
                                <a href="javascript:void(0)" class="remove leading-[15px] absolute top-[0] right-[0] pl-[10px] text-[#ff0000] text-[22px]">Ã</a>
                            </div>
                        </li>
                        <li class="mb-[15px] p-[15px] flex overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <a href="product-left-sidebar.html" class="gi-pro-img flex grow-[1] basis-[20%] items-center"><img src="assets/img/product-images/17_1.jpg" class="w-full" alt="product"></a>
                            <div class="gi-pro-content relative grow-[1] basis-[70%] pl-[15px] overflow-hidden">
                                <a href="product-left-sidebar.html" class="cart-pro-title w-full pr-[30px] text-[#777] whitespace-normal overflow-hidden text-ellipsis block text-[15px] leading-[18px] font-normal">Ginger - Organic</a>
                                <span class="cart-price text-[14px] block mt-[5px]"><span class="text-[#777] font-semibold text-[16px]">$5.00</span> x 1 250g</span>
                                <div class="qty-plus-minus border-[1px] border-solid border-[#eee] h-[35px] overflow-hidden relative w-[85px] flex items-center justify-between py-[7px] mt-[7px]">
                                    <input class="qty-input" type="text" name="gi-qtybtn" value="1">
                                </div>
                                <a href="javascript:void(0)" class="remove leading-[15px] absolute top-[0] right-[0] pl-[10px] text-[#ff0000] text-[22px]">Ã</a>
                            </div>
                        </li>
                        <li class="mb-[15px] p-[15px] flex overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <a href="product-left-sidebar.html" class="gi-pro-img flex grow-[1] basis-[20%] items-center"><img src="assets/img/product-images/2_1.jpg" class="w-full" alt="product"></a>
                            <div class="gi-pro-content relative grow-[1] basis-[70%] pl-[15px] overflow-hidden">
                                <a href="product-left-sidebar.html" class="cart-pro-title w-full pr-[30px] text-[#777] whitespace-normal overflow-hidden text-ellipsis block text-[15px] leading-[18px] font-normal">Dates Value Pack Pouch</a>
                                <span class="cart-price text-[14px] block mt-[5px]"><span class="text-[#777] font-semibold text-[16px]">$59.00</span> x 1 pack</span>
                                <div class="qty-plus-minus border-[1px] border-solid border-[#eee] h-[35px] overflow-hidden relative w-[85px] flex items-center justify-between py-[7px] mt-[7px]">
                                    <input class="qty-input" type="text" name="gi-qtybtn" value="1">
                                </div>
                                <a href="javascript:void(0)" class="remove leading-[15px] absolute top-[0] right-[0] pl-[10px] text-[#ff0000] text-[22px]">Ã</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="gi-cart-bottom">
                    <div class="cart-sub-total flex flex-wrap justify-between pt-[0] pb-[8px] border-t-[1px] border-solid border-[#eee] mt-[20px]">
                        <table class="table cart-table w-full">
                            <tbody class="mt-[10px]">
                                <tr>
                                    <td class="text-left font-medium text-[#777] p-[6px]">Sub-Total :</td>
                                    <td class="text-right font-bold text-[#777] p-[6px]">$300.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left font-medium text-[#777] p-[6px]">VAT (20%) :</td>
                                    <td class="text-right font-bold text-[#777] p-[6px]">$60.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left font-medium text-[#777] p-[6px]">Total :</td>
                                    <td class="text-right font-bold text-[#777] primary-color p-[6px]">$360.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="cart_btn flex justify-between mb-[20px]">
                        <a href="cart.jsp" class="gi-btn-1 w-[48%] h-[40px] block uppercase font-semibold text-[14px] py-[8px] px-[15px] leading-[22px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">View Cart</a>
                        <a href="checkout.jsp" class="gi-btn-2 w-[48%] h-[40px] block uppercase font-semibold text-[14px] py-[8px] px-[15px] leading-[22px] bg-[#5caf90] text-[#fff] text-center rounded-[5px] transition-all dummy-[0.3s] ease-in-out hover:bg-[#4b5966]">Checkout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart sidebar End -->

        <!-- Breadcrumb start -->
        <div class="gi-breadcrumb mb-[40px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <div class="flex flex-wrap m-0 p-[15px] border-[1px] border-solid border-[#eee] rounded-b-[5px] border-t-[0] gi_breadcrumb_inner">
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">About Us</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">About Us</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- About section -->
        <section class="gi-about py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap">
                    <div class="min-[1200px]:w-[50%] min-[768px]:w-full px-[12px]">
                        <div class="gi-about-img">
                            <img src="assets/img/product-images/11_3.jpg" class="v-img w-full rounded-[5px] max-[1199px]:max-w-[600px] max-[199px]:mb-[30px]" alt="about">
                            <img src="assets/img/product-images/6_2.jpg" class="h-img" alt="about">
                            <img src="assets/img/product-images/11_2.jpg" class="h-img" alt="about">
                        </div>
                    </div>
                    <div class="min-[1200px]:w-[50%] min-[768px]:w-full px-[12px]">
                        <div class="gi-about-detail h-full flex flex-col justify-center max-[1199px]:mt-[30px]">
                            <div class="section-title pt-[0] flex flex-col mb-[20px]">
                                <h2 class="mb-[15px] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Who We <span class="text-[#5caf90]">Are?</span></h2>
                                <p class="m-0 text-[#777] text-[18px] font-medium uppercase max-[991px]:text-[17px] max-[767px]:text-[16px] max-[575px]:text-[15px]">We are a group from class SE1914, providing quality products from reputable distributors nationwide.</p>
                            </div>
                            <p class="text-[#777] text-[14px] font-normal mb-[16px]">Welcome to the SE1914 group’s website! We take pride in offering high-quality products,
                                carefully selected from trusted suppliers across the country. With a mission to serve our customers with dedication and professionalism, 
                                we are committed to providing an excellent experience and reliable solutions for all your needs. Explore now to learn more about the products and services we offer!
                            </p>
                            <p class="text-[#777] text-[14px] font-normal mb-[16px]">We specialize in providing high-quality pianos from renowned brands, 
                                suitable for beginners and professional musicians alike. Each piano is carefully inspected by our experienced technicians 
                                to ensure perfect sound and elegant design. Our dedicated support includes expert advice, regular maintenance, 
                                and doorstep delivery. Let us help you turn your musical passion into reality with the perfect piano!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About section End -->

        <!-- Service Section -->
        <section class="gi-service-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="section-title-2 w-full mb-[20px] pb-[20px] flex flex-col justify-center items-center">
                    <h2 class="gi-title mb-[0] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Our <span class="text-[#5caf90]">Services</span></h2>
                    <p class="max-w-[400px] mt-[15px] text-[14px] text-[#777] text-center leading-[23px]">Customer service should not be a department. It should be the entire company.</p>
                </div>
                <div class="flex flex-wrap w-full my-[-12px]">
                    <div class="py-[12px] px-[12px] min-[992px]:w-[25%] min-[576px]:w-[50%] w-full" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="200">
                        <div class="gi-ser-inner p-[30px] transition-all duration-[0.3s] ease delay-[0s] cursor-pointer border-[1px] border-solid border-[#eee] h-full flex items-center justify-center flex-col text-center nh-[#fff] rounded-[5px]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-truck-moving text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="mb-[10px] text-[18px] font-medium text-[#4b5966] tracking-[0.6px] font-Poppins leading-[1.2] max-[575px]:text-[16px]">Free Shipping</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px] font-light">Free shipping on all US order or order above $200</p>
                            </div>
                        </div>
                    </div>
                    <div class="py-[12px] px-[12px] min-[992px]:w-[25%] min-[576px]:w-[50%] w-full" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="400">
                        <div class="gi-ser-inner p-[30px] transition-all duration-[0.3s] ease delay-[0s] cursor-pointer border-[1px] border-solid border-[#eee] h-full flex items-center justify-center flex-col text-center nh-[#fff] rounded-[5px]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-hand-holding-seeding text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="mb-[10px] text-[18px] font-medium text-[#4b5966] tracking-[0.6px] font-Poppins leading-[1.2] max-[575px]:text-[16px]">24X7 Support</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px] font-light">Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                    <div class="py-[12px] px-[12px] min-[992px]:w-[25%] min-[576px]:w-[50%] w-full" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="600">
                        <div class="gi-ser-inner p-[30px] transition-all duration-[0.3s] ease delay-[0s] cursor-pointer border-[1px] border-solid border-[#eee] h-full flex items-center justify-center flex-col text-center nh-[#fff] rounded-[5px]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-badge-percent text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="mb-[10px] text-[18px] font-medium text-[#4b5966] tracking-[0.6px] font-Poppins leading-[1.2] max-[575px]:text-[16px]">30 Days Return</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px] font-light">Simply return it within 30 days for an exchange</p>
                            </div>
                        </div>
                    </div>
                    <div class="py-[12px] px-[12px] min-[992px]:w-[25%] min-[576px]:w-[50%] w-full" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="800">
                        <div class="gi-ser-inner p-[30px] transition-all duration-[0.3s] ease delay-[0s] cursor-pointer border-[1px] border-solid border-[#eee] h-full flex items-center justify-center flex-col text-center nh-[#fff] rounded-[5px]">
                            <div class="gi-service-image mb-[15px]">
                                <i class="fi fi-ts-donate text-[40px] text-[#5caf90] leading-[0]"></i>
                            </div>
                            <div class="gi-service-desc">
                                <h3 class="mb-[10px] text-[18px] font-medium text-[#4b5966] tracking-[0.6px] font-Poppins leading-[1.2] max-[575px]:text-[16px]">Payment Secure</h3>
                                <p class="m-[0] text-[14px] text-[#777] leading-[1.5] tracking-[0.5px] font-light">Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Service Section End -->

        <!-- Testimonials Section -->
        <section class="gi-testimonials-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <h3 class="hidden">Testimonials</h3>
                        <div class="testim-bg py-[80px] max-[575px]:py-[60px] bg-[#f8f8fb] border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <span class="gi-testi-shape-1"></span>
                            <div class="gi-test-outer gi-test-section max-w-[700px] m-auto flex justify-center items-center relative">
                                <ul id="gi-testimonial-slider" class="owl-carousel">
                                    <li class="gi-test-item my-[0] mx-auto py-[0] px-[15px] relative">
                                        <img src="assets/img/icons/top-quotes.svg" class="svg_img test_svg top absolute h-auto top-[-5px] left-[0] right-auto" alt="user">
                                        <div class="gi-test-inner max-w-[730px] my-[0] mx-auto cursor-pointer">
                                            <div class="gi-test-[img] w-[100px] mx-auto mt-auto mb-[30px] block">
                                                <img alt="testimonial" title="testimonial" src="assets/img/about-us/dat.jpg" class="rounded-[50%]">
                                            </div>
                                            <div class="gi-test-content flex flex-col">
                                                <div class="gi-test-desc mb-[15px] text-[#777] text-[15px] leading-[26px] tracking-[0]">Có làm mới có ăn</div>
                                                <div class="gi-test-name text-[22px] font-semibold mb-[6px] text-[#5caf90] tracking-[0.6px] leading-[1.2]">Phan Hong Đat</div>
                                                <div class="gi-test-designation text-[16px] text-[#777] leading-[1.2] tracking-[0.5px] mb-[8px]">Chu tich hoi đong xet xu</div>
                                                <div class="gi-test-rating my-[0] mx-auto">
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/img/icons/bottom-quotes.svg" class="svg_img test_svg bottom absolute h-auto bottom-[-5px] right-[0] left-auto" alt="">
                                    </li>
                                    <li class="gi-test-item my-[0] mx-auto py-[0] px-[15px] relative">
                                        <img src="assets/img/icons/top-quotes.svg" class="svg_img test_svg top absolute h-auto top-[-5px] left-[0] right-auto" alt="">
                                        <div class="gi-test-inner max-w-[730px] my-[0] mx-auto cursor-pointer">
                                            <div class="gi-test-img w-[100px] mx-auto mt-auto mb-[30px] block">
                                                <img alt="testimonial" title="testimonial" src="assets/img/about-us/nhatnhu.jpg" class="rounded-[50%]">
                                            </div>
                                            <div class="gi-test-content flex flex-col">
                                                <div class="gi-test-desc mb-[15px] text-[#777] text-[15px] leading-[26px] tracking-[0]">Chan đê</div>
                                                <div class="gi-test-name text-[22px] font-semibold mb-[6px] text-[#5caf90] tracking-[0.6px] leading-[1.2]">Nhu Đinh Nhat</div>
                                                <div class="gi-test-designation text-[16px] text-[#777] leading-[1.2] tracking-[0.5px] mb-[8px]">Sugar baby</div>
                                                <div class="gi-test-rating my-[0] mx-auto">
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/img/icons/bottom-quotes.svg" class="svg_img test_svg bottom absolute h-auto bottom-[-5px] right-[0] left-auto" alt="">
                                    </li>
                                    <li class="gi-test-item my-[0] mx-auto py-[0] px-[15px] relative">
                                        <img src="assets/img/icons/top-quotes.svg" class="svg_img test_svg top absolute h-auto top-[-5px] left-[0] right-auto" alt="">
                                        <div class="gi-test-inner max-w-[730px] my-[0] mx-auto cursor-pointer   ">
                                            <div class="gi-test-img w-[100px] mx-auto mt-auto mb-[30px] block">
                                                <img alt="testimonial" title="testimonial" src="assets/img/about-us/nhatanh.jpg" class="rounded-[50%]">
                                            </div>
                                            <div class="gi-test-content flex flex-col">
                                                <div class="gi-test-desc mb-[15px] text-[#777] text-[15px] leading-[26px] tracking-[0]">Shark</div>
                                                <div class="gi-test-name text-[22px] font-semibold mb-[6px] text-[#5caf90] tracking-[0.6px] leading-[1.2]">Pham Nhat Anh</div>
                                                <div class="gi-test-designation text-[16px] text-[#777] leading-[1.2] tracking-[0.5px] mb-[8px]">Your Daddy</div>
                                                <div class="gi-test-rating my-[0] mx-auto">
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                    <i class="gicon gi-star fill inline-block text-[11px] mx-[0.5px] float-left text-[#f27d0c]"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/img/icons/bottom-quotes.svg" class="svg_img test_svg bottom absolute h-auto bottom-[-5px] right-[0] left-auto" alt="">
                                    </li>
                                </ul>
                            </div>
                            <span class="gi-testi-shape-2"></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials Section End -->

        <!-- Facts Section -->
        <section class="gi-facts-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full my-[-12px]">
                    <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-facts-inner py-[30px] px-[15px] h-full flex items-center justify-center flex-col text-center bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <div class="gi-count">
                                <span class="counter mb-[15px] text-[40px] font-extrabold text-[#ddd] max-[991px]:text-[38px] max-[767px]:text-[36px] max-[575px]:text-[32px]">65K+</span>
                            </div>
                            <div class="gi-facts-desc">
                                <h4 class="text-[20px] text-[#4b5966] font-semibold leading-[1.2] mb-[6px]">Vendors</h4>
                                <p class="max-w-[250px] m-0 text-[14px] text-[#777]">Contrary to popular belief, Lorem is not simply random text.</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-facts-inner py-[30px] px-[15px] h-full flex items-center justify-center flex-col text-center bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <div class="gi-count">
                                <span class="counter mb-[15px] text-[40px] font-extrabold text-[#ddd] max-[991px]:text-[38px] max-[767px]:text-[36px] max-[575px]:text-[32px]">$45B+</span>
                            </div>
                            <div class="gi-facts-desc">
                                <h4 class="text-[20px] text-[#4b5966] font-semibold leading-[1.2] mb-[6px]">Earnings</h4>
                                <p class="max-w-[250px] m-0 text-[14px] text-[#777]">Contrary to popular belief, Lorem is not simply random text.</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-facts-inner py-[30px] px-[15px] h-full flex items-center justify-center flex-col text-center bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <div class="gi-count">
                                <span class="counter mb-[15px] text-[40px] font-extrabold text-[#ddd] max-[991px]:text-[38px] max-[767px]:text-[36px] max-[575px]:text-[32px]">25M+</span>
                            </div>
                            <div class="gi-facts-desc">
                                <h4 class="text-[20px] text-[#4b5966] font-semibold leading-[1.2] mb-[6px]">Sold</h4>
                                <p class="max-w-[250px] m-0 text-[14px] text-[#777]">Contrary to popular belief, Lorem is not simply random text.</p>
                            </div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-facts-inner py-[30px] px-[15px] h-full flex items-center justify-center flex-col text-center bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                            <div class="gi-count">
                                <span class="counter mb-[15px] text-[40px] font-extrabold text-[#ddd] max-[991px]:text-[38px] max-[767px]:text-[36px] max-[575px]:text-[32px]">70K+</span>
                            </div>
                            <div class="gi-facts-desc">
                                <h4 class="text-[20px] text-[#4b5966] font-semibold leading-[1.2] mb-[6px]">Products</h4>
                                <p class="max-w-[250px] m-0 text-[14px] text-[#777]">Contrary to popular belief, Lorem is not simply random text.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Facts Section End -->

        <!-- Team Section -->
        <section class="gi-team-section py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="section-title-2 w-full mb-[20px] pb-[20px] px-[12px] flex flex-col justify-center items-center">
                    <h2 class="gi-title mb-[0] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Our <span class="text-[#5caf90]">Team</span></h2>
                    <p class="max-w-[400px] mt-[15px] text-[14px] text-[#777] text-center leading-[23px]">Meet out expert team members.</p>
                </div>
                <div class="gi-team owl-carousel px-[12px]">
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/dat.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Phan Hong Dat</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">CEO</p>
                        </div>
                    </div>
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/nhatnhu.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Nhu Dinh Nhat</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">Developer</p>
                        </div>
                    </div>
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/nhatanh.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Pham Nhat Anh</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">Manager</p>
                        </div>
                    </div>
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/dat.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Pham Hong Dat</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">CEO</p>
                        </div>
                    </div>
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/nhatnhu.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Nhu Dinh Nhat</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">Developer</p>
                        </div>
                    </div>
                    <div class="gi-team-box relative">
                        <div class="gi-team-imag relative">
                            <img src="assets/img/about-us/nhatanh.jpg" alt="user" class="w-full rounded-[5px]">
                            <div class="gi-team-socials transition-all duration-[0.3s] ease-in-out m-auto absolute top-auto bottom-[0] left-[0] right-[0] opacity-[0] max-[991px]:bottom-[15px] max-[991px]:opacity-[1]">
                                <ul class="align-itegi-center flex flex-row justify-center">
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-twitter text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-facebook text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="gi-social-link">
                                        <a href="#" class="h-[30px] w-[30px] m-[2px] flex items-center justify-center bg-[#4b5966] rounded-[5px] hover:bg-[#5caf90]">
                                            <i class="gicon gi-linkedin text-[#fff] text-[15px]" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gi-team-info text-center">
                            <h5 class="mt-[15px] text-[#4b5966] text-[18px] leading-[1.2] mb-[6px] font-bold">Pham Nhat Anh</h5>
                            <p class="m-0 text-[#777] font-light text-[13px] leading-[16px]">Manager</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Facts Section End -->


        <!-- Footer Start -->
        <jsp:include page="footer.jsp" />
        <!-- Footer Area End -->


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


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/about-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:26 GMT -->
</html>