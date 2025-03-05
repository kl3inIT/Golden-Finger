<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/contact-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:26 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Contact Us</title>
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
        <div id="gi-overlay" class="w-full h-full fixed top-0 right-0 left-0 bottom-0 bg-[#fff] z-[99] flex items-center justify-center overflow-hidden">
            <div class="loader"></div>
        </div>

        <!-- Header start  -->
        <header class="gi-header bg-[#fff] z-[14] max-[991px]:z-[16] relative">
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

            <!-- Header menu -->
            <div class="gi-header-cat transition-all duration-[0.3s] ease-in-out bg-[#fff] border-t-[1px] border-b-[1px] border-solid border-[#eee] hidden min-[992px]:block">
                <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                    <div class="gi-nav-bar flex flex-row justify-between relative w-full px-[12px]">
                        <!-- Category Toggle -->
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
                                                    <a href="aboutus" class="dropdown-arrow relative transition-all duration-[0.3s] ease-in-out text-[15px] leading-[60px] capitalize text-[#4b5966] flex items-center font-medium">About Us</a>
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
                                    <li><a href="demo-2.jsp" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Fashion</a></li>
                                    <li><a href="demo-3.jsp" class="mb-[0] pl-[15px] py-[12px] pr-[0] capitalize block text-[14px] font-normal text-[#777]">Fashion 2</a></li>
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
                        <a href="cart.html" class="gi-btn-1 w-[48%] h-[40px] block uppercase font-semibold text-[14px] py-[8px] px-[15px] leading-[22px] bg-[#4b5966] text-[#fff] border-[0] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">View Cart</a>
                        <a href="checkout.html" class="gi-btn-2 w-[48%] h-[40px] block uppercase font-semibold text-[14px] py-[8px] px-[15px] leading-[22px] bg-[#5caf90] text-[#fff] text-center rounded-[5px] transition-all dummy-[0.3s] ease-in-out hover:bg-[#4b5966]">Checkout</a>
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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Contact Us</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Contact Us</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Contact us section -->
        <section class="gi-contact py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="section-title-2 w-full mb-[20px] pb-[20px] flex flex-col justify-center items-center">
                    <h2 class="gi-title mb-[0] font-manrope text-[26px] font-semibold text-[#4b5966] relative inline p-[0] capitalize leading-[1]">Get in <span class="text-[#5caf90]">Touch</span></h2>
                    <p class="max-w-[400px] mt-[15px] text-[14px] text-[#777] text-center leading-[23px]">Please select a topic below related to you inquiry. If you don't fint what you need, fill out our
                        contact form.</p>   
                </div>
                <div class="w-full flex flex-wrap gi-contact-detail my-[-12px]">
                    <div class="min-[992px]:w-[33.33%] min-[576px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-box h-full p-[24px] border-[1px] border-solid border-[#eee] bg-[#f8f8fb] relative rounded-[5px] transition-all duration-[0.3s] ease-in-out">
                            <div class="detail flex flex-col justify-center items-center text-center">
                                <div class="icon w-[70px] h-[70px] mb-[15px] bg-[#4b5966] flex flex-col justify-center items-center rounded-[5px] text-center">
                                    <i class="fa fa-envelope text-[25px] text-[#fff] leading-[1]" aria-hidden="true"></i>
                                </div>
                                <div class="info text-center">
                                    <h3 class="title text-[20px] font-semibold text-[#4b5966] capitalize tracking-[0.01rem] leading-[1.2] mb-[6px]">Mail & Website</h3>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-envelope text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; mail.example@gmail.com
                                    </p>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-globe text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; www.yourdomain.com
                                    </p>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[33.33%] min-[576px]:w-[50%] w-full px-[12px] py-[12px]">
                        <div class="gi-box h-full p-[24px] border-[1px] border-solid border-[#eee] bg-[#f8f8fb] relative rounded-[5px] transition-all duration-[0.3s] ease-in-out">
                            <div class="detail flex flex-col justify-center items-center text-center">
                                <div class="icon w-[70px] h-[70px] mb-[15px] bg-[#4b5966] flex flex-col justify-center items-center rounded-[5px] text-center">
                                    <i class="fa fa-mobile text-[25px] text-[#fff] leading-[1]" aria-hidden="true"></i>
                                </div>
                                <div class="info text-center">
                                    <h3 class="title text-[20px] font-semibold text-[#4b5966] capitalize tracking-[0.01rem] leading-[1.2] mb-[6px]">Contact</h3>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-mobile text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; (+91)-9876XXXXX
                                    </p>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-mobile text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; (+91)-987654XXXX
                                    </p>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div>
                    </div>
                    <div class="min-[992px]:w-[33.33%] min-[576px]:w-[50%] w-full px-[12px] py-[12px] m-auto">
                        <div class="gi-box h-full p-[24px] border-[1px] border-solid border-[#eee] bg-[#f8f8fb] relative rounded-[5px] transition-all duration-[0.3s] ease-in-out">
                            <div class="detail flex flex-col justify-center items-center text-center">
                                <div class="icon w-[70px] h-[70px] mb-[15px] bg-[#4b5966] flex flex-col justify-center items-center rounded-[5px] text-center">
                                    <i class="fa fa-map-marker text-[25px] text-[#fff] leading-[1]" aria-hidden="true"></i>
                                </div>
                                <div class="info text-center">
                                    <h3 class="title text-[20px] font-semibold text-[#4b5966] capitalize tracking-[0.01rem] leading-[1.2] mb-[6px]">Address</h3>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-map-marker text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; Khu cong nghe cao Hoa Lac - Km29, ĐCT08, Thach Hoa, Thach That, Ha Noi, Viet Nam
                                    </p>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div>
                    </div>
                </div>
                <div class="w-full flex flex-wrap pt-[80px] max-[576px]:pt-[60px]">
                    <div class="min-[768px]:w-[50%] w-full px-[12px]">
                        <iframe src="http://maps.google.com/maps?q=-12.942227,-38.480291&amp;z=15&amp;output=embed" class="h-full w-full mb-[-7px] border-[1px] border-solid border-[#eee] rounded-[5px] max-[767px]:h-[300px]" allowfullscreen=""></iframe>
                    </div>
                    <div class="min-[768px]:w-[50%] w-full px-[12px]">
                        <form class="max-[767px]:mt-[50px]">
                            <div class="form-group mb-[30px]">
                                <input type="text" class="form-control py-[10px] px-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] text-[#777] block w-full font-normal leading-[1.5]" id="fname" placeholder="Full Name">
                            </div>
                            <div class="form-group mb-[30px]">
                                <input type="email" class="form-control py-[10px] px-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] text-[#777] block w-full font-normal leading-[1.5]" id="umail" placeholder="Email">
                            </div>
                            <div class="form-group mb-[30px]">
                                <input type="text" class="form-control py-[10px] px-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] text-[#777] block w-full font-normal leading-[1.5]" id="phone" placeholder="Phone">
                            </div>
                            <div class="form-group mb-[30px]">
                                <textarea class="form-control py-[10px] px-[15px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[15px] text-[#777] block w-full font-normal leading-[1.5]" id="exampleFormControlTextarea1" rows="3" placeholder="Message"></textarea>
                            </div>
                            <button type="submit" class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[15px] text-[14px] font-medium bg-[#5caf90] text-[#fff] text-center rounded-[5px] hover:bg-[#4b5966] hover:text-[#fff]">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>


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


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/contact-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:26 GMT -->
</html>