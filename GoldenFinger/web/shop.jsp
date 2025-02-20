<%-- 
    Document   : shop
    Created on : Feb 13, 2025, 11:04:47 PM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/shop-full-width-col-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:21 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Shop</title>
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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Shop Page</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="index.html" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Shop Page</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

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

        <!-- Shop section -->
        <section class="gi-shop py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                <div class="flex flex-wrap w-full px-[12px]">
                    <div class="gi-shop-rightside w-full">
                        <!-- Shop Top Start -->
                        <div class="gi-pro-list-top flex items-center justify-between text-[14px] border-[1px] border-solid border-[#eee] rounded-[5px] mb-[30px]">
                            <div class="min-[768px]:w-[50%] w-full gi-grid-list">
                                <div class="gi-gl-btn ml-[5px] flex items-center flex-row">
                                    <button type="button" class="grid-btn filter-toggle-icon h-[40px] w-[40px] border-[0] rounded-[0] flex items-center justify-center flex-row">
                                        <i class="fi fi-rr-filter text-[20px] text-[#4b5966] leading-[0]"></i>
                                    </button>
                                    <button type="button" class="grid-btn btn-grid-50 h-[40px] w-[40px] border-[0] rounded-[0] flex items-center justify-center flex-row active">
                                        <i class="fi fi-rr-apps text-[20px] text-[#4b5966] leading-[0]"></i>
                                    </button>
                                    <button type="button" class="grid-btn btn-list-50 h-[40px] w-[40px] border-[0] rounded-[0] flex items-center justify-center flex-row">
                                        <i class="fi fi-rr-list text-[20px] text-[#4b5966] leading-[0]"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full gi-sort-select flex justify-end items-center">
                                <div class="gi-select-inner relative flex w-[140px] h-[50px] leading-[1.5] bg-[#fff] overflow-hidden rounded-[0] border-l-[1px] border-solid border-[#eee]">
                                    <select name="gi-select" id="gi-select" class="appearance-none outline-[0] border-[0] bg-[#fff] grow-[1] px-[10px] text-[#777] cursor-pointer">
                                        <option selected disabled>Sort by</option>
                                        <option value="1">Position</option>
                                        <option value="2">Relevance</option>
                                        <option value="3">Name, A to Z</option>
                                        <option value="4">Name, Z to A</option>
                                        <option value="5">Price, low to high</option>
                                        <option value="6">Price, high to low</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- Shop Top End -->

                        <!-- Select Bar Start -->
                        <div class="gi-select-bar mt-[-5px] mx-[-5px] mb-[25px] flex flex-wrap justify-end ">
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">Clothes
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">Fruits
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">Snacks
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">Dairy
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">perfume
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn m-[5px] px-[10px] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">jewelry
                                <a class="gi-select-cancel ml-[15px] text-[#ff8585] text-[18px] transition-all duration-[0.3s] ease-in-out" href="javascript:void(0)">×</a>
                            </span>
                            <span class="gi-select-btn gi-select-btn-clear m-[5px] p-[0] border-[1px] border-solid border-[#eee] rounded-[5px] text-[#777] text-[14px] flex items-center capitalize">
                                <a class="gi-select-clear transition-all duration-[0.3s] ease-in-out h-full m-[0] py-[3px] px-[10px] text-[14px] flex items-center bg-[#4b5966] text-[#fff] rounded-[5px] hover:bg-[#5CAF90] hover:text-[#fff]" href="javascript:void(0)">Clear All</a>
                            </span>
                        </div>
                        <!-- Select Bar End -->

                        <!-- Shop content Start -->
                        <div class="shop-pro-content">
                            <div class="shop-pro-inner mx-[-12px]">
                                <div class="flex flex-wrap w-full">
                                    <c:forEach items="${requestScope.productList}" var="p">
                                        <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] min-[576px]:w-[50%] max-[420px]:w-full px-[12px] gi-product-box max-[575px]:w-[50%] max-[575px]:mx-auto pro-gl-content">
                                            <div class="gi-product-content pb-[24px] h-full flex">
                                                <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">

                                                    <div class="gi-pro-image-outer transition-all duration-[0.3s] ease delay-[0s] z-[11] relative">
                                                        <div class="gi-pro-image overflow-hidden">
                                                            <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none transition-all duration-[0.3s] ease-in-out">

                                                                <span class="label veg max-[991px]:hidden">
                                                                    <span class="dot"></span>
                                                                </span>
                                                                <c:if test="${not empty p.image[0]}">
                                                                    <img class="main-image max-w-full z-[1] transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[0]}" alt="Product">
                                                                </c:if>
                                                                <c:if test="${not empty p.image[1]}">
                                                                    <img class="hover-image absolute z-[2] top-[0] left-[0] opacity-[0] max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="${p.image[1]}" alt="Product">
                                                                </c:if>
                                                            </a>
                                                            <span class="flags flex flex-col p-[0] uppercase absolute top-[10px] right-[10px] z-[2]">
                                                                <span class="sale py-[5px] px-[10px] text-[11px] font-medium leading-[12px] text-left uppercase flex items-center bg-[#ff7070] text-[#fff] tracking-[0.5px] relative rounded-[5px]">Sale</span>
                                                            </span>
                                                            <div class="gi-pro-actions transition-all duration-[0.3s] ease-in-out absolute z-[9] left-[0] right-[0] bottom-[-10px] max-[991px]:opacity-[1] max-[991px]:bottom-[10px] flex flex-row items-center justify-center my-[0] mx-auto opacity-[0]">
                                                                <a class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]" title="Wishlist">
                                                                    <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                                <a href="javascript:void(0)" class="gi-btn-group modal-toggle quickview transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]">
                                                                    <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                                <a href="javascript:void(0)" class="gi-btn-group compare transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]" title="Compare">
                                                                    <i class="fi fi-rr-arrows-repeat transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                                <a href="javascript:void(0)" title="Add To Cart" class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]">
                                                                    <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                        <a href="shop-left-sidebar-col-4.html">
                                                            <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] capitalize font-manrope tracking-[0.01rem] leading-[1.2]">${p.category.name}</h6>
                                                        </a>
                                                        <h5 class="gi-pro-title h-full mb-[10px] text-[16px] tracking-[0.01rem] font-normal leading-[1.2]">
                                                            <a href="product-left-sidebar.html" class="text-[#4b5966] block text-[14px] leading-[22px] font-normal tracking-[0.85px] capitalize font-Poppins">${p.name}</a>
                                                        </h5>
                                                        <p class="gi-info text-[15px] leading-[28px] font-light tracking-[0.02rem] mb-[16px] hidden">Contrary to popular belief, Lorem Ipsum is not simply
                                                            random text. It has roots in a piece of classical Latin literature
                                                            from 45 BC, making it over 2000 years old.</p>
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
                            <!-- Pagination Start -->
                            <div class="gi-pro-pagination pt-[15px] flex justify-between items-center border-t-[1px] border-solid border-[#eee] max-[575px]:flex-col">
                                <span class="text-[14px] text-[#777] max-[575px]:mb-[10px]">Showing 1-12 of 21 item(s)</span>
                                <ul class="gi-pro-pagination-inner">
                                    <li class="inline-block float-left mr-[5px]"><a class="transition-all duration-[0.3s] ease-in-out w-[32px] h-[32px] font-light text-[#777] leading-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center items-center rounded-[5px] active" href="#">1</a></li>
                                    <li class="inline-block float-left mr-[5px]"><a class="transition-all duration-[0.3s] ease-in-out w-[32px] h-[32px] font-light text-[#777] leading-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center items-center rounded-[5px] hover:text-[#fff] hover:bg-[#5CAF90]" href="#">2</a></li>
                                    <li class="inline-block float-left mr-[5px]"><a class="transition-all duration-[0.3s] ease-in-out w-[32px] h-[32px] font-light text-[#777] leading-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center items-center rounded-[5px] hover:text-[#fff] hover:bg-[#5CAF90]" href="#">3</a></li>
                                    <li class="inline-block float-left mr-[5px]"><span class="w-[20px] text-[#777] block text-center text-[14px] tracking-[0.02rem] max-[575px]:mb-[10px]">...</span></li>
                                    <li class="inline-block float-left mr-[5px]"><a class="transition-all duration-[0.3s] ease-in-out w-[32px] h-[32px] font-light text-[#777] leading-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center items-center rounded-[5px] hover:text-[#fff] hover:bg-[#5CAF90]" href="#">8</a></li>
                                    <li class="inline-block float-left"><a class="next w-auto px-[13px] text-[#fff] bg-[#5CAF90] leading-[30px] h-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center items-center rounded-[5px]" href="#">Next <i class="gicon gi-angle-right ml-[10px] transition-all duration-[0.3s] ease-in-out text-[#fff]"></i></a></li>
                                </ul>
                            </div>
                            <!-- Pagination End -->
                        </div>
                        <!--Shop content End -->

                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="filter-sidebar-overlay w-full h-screen bg-[#00000080] fixed top-[0] left-[0] z-[16] hidden"></div>
                    <div class="gi-shop-sidebar gi-filter-sidebar transition-all duration-[0.3s] ease-in-out w-[300px] h-screen p-[0] fixed top-[0] left-[0] z-[16] bg-[#fff] translate-x-[-100%] overflow-auto">
                        <div class="sidebar-filter-title p-[15px] flex flex-row justify-between bg-[#f8f8fb]">
                            <h5 class="m-[0] text-[20px] font-bold font-manrope tracking-[0.01rem] leading-[1.2]">Filters</h5>
                            <a class="filter-close ml-[15px] text-[#ff8585] text-[24px] leading-[1]" href="javascript:void(0)">×</a>
                        </div>
                        <div id="shop_sidebar">
                            <div class="gi-sidebar-wrap p-[15px] rounded-[5px] border-[1px] border-solid border-[#eee]">
                                <!-- Sidebar Category Block -->
                                <div class="gi-sidebar-block mb-[15px]">
                                    <div class="gi-sb-title border-b-[1px] border-solid border-[#eee] pb-[15px]">
                                        <h3 class="gi-sidebar-title font-semibold tracking-[0] relative text-[#4b5966] w-full flex justify-between font-Poppins text-[17px] leading-[1.2]">Category</h3>
                                    </div>
                                    <div class="gi-sb-block-content mt-[15px]">
                                        <ul>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Grand Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Upright Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Digital Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Stage Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Hybrid Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                        <span class="flex">Player Piano</span>
                                                    </a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Sidebar Brand Block -->
                                <div class="gi-sidebar-block mb-[15px]">
                                    <div class="gi-sb-title border-b-[1px] border-solid border-[#eee] pb-[15px]">
                                        <h3 class="gi-sidebar-title font-semibold tracking-[0] relative text-[#4b5966] w-full flex justify-between font-Poppins text-[17px] leading-[1.2]">Brand</h3>
                                    </div>
                                    <div class="gi-sb-block-content mt-[15px]">
                                        <ul>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Yamaha</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Roland</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Casio</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Korg</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Steinway & Son</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                    <input type="checkbox" value="" class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]">
                                                    <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">Kawai</a>
                                                    <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Sidebar Price Block -->
                                <div class="gi-sidebar-block mb-[15px]">
                                    <div class="gi-sb-title border-b-[1px] border-solid border-[#eee] pb-[15px]">
                                        <h3 class="gi-sidebar-title font-semibold tracking-[0] relative text-[#4b5966] w-full flex justify-between font-Poppins text-[17px] leading-[1.2]">Price</h3>
                                    </div>
                                    <div class="gi-sb-block-content gi-price-range-slider es-price-slider mt-[20px]">
                                        <div class="gi-price-filter flex justify-between flex-col">
                                            <div class="gi-price-input mb-[15px] p-[10px] flex justify-center items-center rounded-[5px] bg-[#f8f8fb]">
                                                <label class="filter__label text-[14px] text-[#777] flex flex-col justify-center items-center">
                                                    From
                                                    <input type="text" class="filter__input rounded-[5px] h-[30px] border-[0] p-[0] max-w-[48px] leading-[30px] bg-[#fff] text-center text-[14px] text-[#777] outline-[0]">
                                                </label>
                                                <span class="gi-price-divider relative border-b-[1px] border-solid border-[#777] w-[10px] h-[1px] mx-[10px]"></span>
                                                <label class="filter__label text-[14px] text-[#777] flex flex-col justify-center items-center">
                                                    To<input type="text" class="filter__input rounded-[5px] h-[30px] border-[0] p-[0] max-w-[48px] leading-[30px] bg-[#fff] text-center text-[14px] text-[#777] outline-[0]">
                                                </label>
                                            </div>
                                            <div id="gi-sliderPrice" class="filter__slider-price" data-min="0" data-max="10000" data-step="10"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shop section End -->

        <jsp:include page="footer"/> 

        <!-- Quickview Modal -->
        <div class="gi-modal-overlay w-full h-screen hidden fixed top-0 left-0 z-[30] bg-[#000000b3]"></div>
        <div class="modal gi-modal max-[575px]:w-full fixed top-[50%] left-[50%] z-[30] max-[767px]:w-full hidden max-[767px]:max-h-full max-[767px]:overflow-y-auto">
            <div class="modal-dialog modal-dialog-centered h-full my-[0%] mx-auto max-w-[900px] w-[900px] max-[991px]:max-w-[650px] max-[991px]:w-[650px] max-[767px]:w-[80%] max-[767px]:h-auto max-[767px]:max-w-[80%] max-[767px]:m-[0] max-[767px]:py-[35px] max-[767px]:mx-auto max-[575px]:w-[90%] transition-transform duration-[0.3s] ease-out">
                <div class="modal-content quickview-modal p-[30px] relative bg-[#fff] rounded-[5px] max-[360px]:p-[15px]">
                    <button type="button" class="gi-close-modal qty_close absolute top-[10px] right-[10px] leading-[18px] max-[420px]:top-[5px] max-[420px]:right-[5px]"></button>
                    <div class="modal-body mx-[-12px] max-[767px]:mx-[0]">
                        <div class="w-full flex flex-wrap w-full">
                            <div class="min-[768px]:w-[41.66%] px-[12px] max-[767px]:px-[0] w-full">
                                <div class="single-pro-img single-pro-img-no-sidebar h-full border-[1px] border-solid border-[#eee] rounded-[5px] overflow-hidden">
                                    <div class="single-product-scroll h-full">
                                        <div class="single-slide h-full flex items-center zoom-image-hover">
                                            <img class="img-responsive h-full w-full" src="assets/img/product-images/10_1.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[768px]:w-[58.33%] px-[12px] max-[767px]:px-[0] w-full max-[767px]:mt-[30px]">
                                <div class="quickview-pro-content">
                                    <h5 class="gi-quick-title">
                                        <a href="product-left-sidebar.html" class="mb-[15px] block text-[#4b5966] text-[22px] leading-[1.5] font-medium max-[991px]:text-[20px]">Mix nuts premium quality organic dried fruit 250g pack</a>
                                    </h5>
                                    <div class="gi-quickview-rating flex mb-[15px]">
                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[5px]"></i>
                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[5px]"></i>
                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[5px]"></i>
                                        <i class="gicon gi-star fill text-[14px] text-[#f27d0c] mr-[5px]"></i>
                                        <i class="gicon gi-star text-[14px] text-[#777] mr-[5px]"></i>
                                    </div>
                                    <div class="gi-quickview-desc mb-[10px] text-[15px] leading-[24px] text-[#777] font-light">Lorem Ipsum is simply dummy text of the printing and
                                        typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever
                                        since the 1900s,</div>
                                    <div class="gi-quickview-price pt-[5px] pb-[10px] flex items-center justify-left">
                                        <span class="new-price text-[#4b5966] font-bold text-[22px]">$50.00</span>
                                        <span class="old-price text-[18px] ml-[10px] line-through text-[#777]">$62.00</span>
                                    </div>
                                    <div class="gi-pro-variation mt-[5px]">
                                        <div class="gi-pro-variation-inner flex flex-col mb-[15px] gi-pro-variation-size gi-pro-size">
                                            <div class="gi-pro-variation-content">
                                                <ul class="gi-opt-size">
                                                    <li class="h-[22px] py-[2px] px-[8px] cursor-pointer border-[1px] border-solid border-[#eee] text-[#fff] flex items-center justify-center text-[12px] leading-[22px] rounded-[3px] font-normal float-left mr-[5px] hover:bg-[#5CAF90] hover:text-[#fff] hover:border-[#5CAF90] active">
                                                        <a href="javascript:void(0)" class="gi-opt-sz text-[#777]" data-tooltip="Small">250g</a>
                                                    </li>
                                                    <li class="h-[22px] py-[2px] px-[8px] cursor-pointer border-[1px] border-solid border-[#eee] text-[#fff] flex items-center justify-center text-[12px] leading-[22px] rounded-[3px] font-normal float-left mr-[5px] hover:bg-[#5CAF90] hover:text-[#fff] hover:border-[#5CAF90]">
                                                        <a href="javascript:void(0)" class="gi-opt-sz text-[#777]" data-tooltip="Medium">500g</a>
                                                    </li>
                                                    <li class="h-[22px] py-[2px] px-[8px] cursor-pointer border-[1px] border-solid border-[#eee] text-[#fff] flex items-center justify-center text-[12px] leading-[22px] rounded-[3px] font-normal float-left mr-[5px] hover:bg-[#5CAF90] hover:text-[#fff] hover:border-[#5CAF90]">
                                                        <a href="javascript:void(0)" class="gi-opt-sz text-[#777]" data-tooltip="Large">1kg</a>
                                                    </li>
                                                    <li class="h-[22px] py-[2px] px-[8px] cursor-pointer border-[1px] border-solid border-[#eee] text-[#fff] flex items-center justify-center text-[12px] leading-[22px] rounded-[3px] font-normal float-left mr-[5px] hover:bg-[#5CAF90] hover:text-[#fff] hover:border-[#5CAF90]">
                                                        <a href="javascript:void(0)" class="gi-opt-sz text-[#777]" data-tooltip="Extra Large">2kg</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gi-quickview-qty mt-[15px] inline-flex">
                                        <div class="qty-plus-minus w-[100px] h-[43px] border-[1px] border-solid border-[#eee] overflow-hidden relative flex items-center justify-between rounded-[3px]">
                                            <input class="qty-input w-[40px] h-[50px] text-[#777] text-[14px] text-center outline-[0]" type="text" name="gi_qtybtn" value="1">
                                        </div>
                                        <div class="gi-quickview-cart">
                                            <button type="button" class="gi-btn-1 ml-[15px] transition-all duration-[0.3s] ease-in-out overflow-hidden text-center relative rounded-[5px] py-[10px] max-[767px]:py-[6px] px-[15px] max-[767px]:px-[10px] bg-[#4b5966] text-[#fff] border-[0] text-[15px] max-[767px]:text-[13px] tracking-[0] font-medium inline-flex items-center hover:bg-[#5CAF90] hover:text-[#fff]"><i class="fi-rr-shopping-basket text-[14px] leading-[0] mr-[5px]"></i> Add To Cart</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Quickview Modal end -->

        <!-- Back to top  -->
        <a class="gi-back-to-top inline-block bg-[#4b5966] w-[40px] h-[40px] text-center rounded-[4px] fixed bottom-[30px] right-[30px] opacity-[0] invisible z-[16] border-[1px] border-solid border-[#fff] hover:cursor-pointer hover:bg-[#000] hover:opacity-[1] max-[767px]:bottom-[15px] max-[767px]:right-[15px]"></a>

        <!-- Feature tools -->
        <div class="gi-tools-sidebar-overlay hidden w-full h-screen fixed top-0 left-0 bg-[#00000080] z-[16]"></div>
        <div class="gi-tools-sidebar bg-[#fff] w-[300px] h-screen fixed right-0 top-0 transition-all duration-[0.3s] ease z-[17]">
            <div class="gi-bar-title mb-[15px] p-[15px] flex flex-row justify-between items-center border-b-[1px] border-solid border-[#17181c]">
                <h6 class="m-0 text-[17px] font-bold text-[#4b5966] leading-[1.2]">Tools</h6>
                <a href="javascript:void(0)" class="close-tools relative border-[0] text-[30px] leading-[20px] text-[#4b5966]">
                    <i class="fi-rr-cross-small text-[20px] leading-[0]"></i>
                </a>
            </div>
            <div class="gi-tools-detail overflow-auto px-[15px] pb-[15px] h-[calc(100vh-72px)]">
                <div class="gi-tools-block">
                    <h3 class="my-[15px] text-[14px] font-medium text-[#4b5966] font-Poppins leading-[1.2]">Select Color</h3>
                    <ul class="gi-color">
                        <li class="color-primary inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative active-variant"></li>
                        <li class="color-1 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-2 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-3 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-4 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-5 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-6 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-7 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                        <li class="color-8 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"> </li>
                        <li class="color-9 inline-block h-[35px] w-[35px] rounded-[5px] cursor-pointer align-middle m-[6px] relative"></li>
                    </ul>
                </div>
                <div class="gi-tools-block">
                    <h3 class="my-[15px] text-[14px] font-medium text-[#4b5966] font-Poppins leading-[1.2]">Modes</h3>
                    <div class="gi-tools-rtl flex flex-wrap flex-row justify-between">
                        <div class="mode-primary gi-tools-item w-[125px] mb-[10px] text-center mode active-rtl ltr" data-gi-mode-tool="ltr">
                            <img src="assets/img/tools/ltr.png" alt="ltr" class="w-full p-[5px] rounded-[10px] border-[1px] border-solid border-[#17181c] hover:border-[#5CAF90]">
                            <p class="m-0 capitalize">LTR</p>
                        </div>
                        <div class="gi-tools-item w-[125px] mb-[10px] text-center mode rtl" data-gi-mode-tool="rtl">
                            <img src="assets/img/tools/rtl.png" alt="rtl" class="w-full p-[5px] rounded-[10px] border-[1px] border-solid border-[#17181c] hover:border-[#5CAF90]">
                            <p class="m-0 capitalize">RTL</p>
                        </div>
                    </div>
                </div>
                <div class="gi-tools-block">
                    <h3 class="my-[15px] text-[14px] font-medium text-[#4b5966] font-Poppins leading-[1.2]">Dark Modes</h3>
                    <div class="gi-tools-dark flex flex-wrap flex-row justify-between">
                        <div class="mode-primary gi-dark-item mode w-[125px] mb-[10px] text-center active-dark light" data-gi-mode-tool="light">
                            <img src="assets/img/tools/light.png" alt="light" class="w-full p-[5px] rounded-[10px] border-[1px] border-solid border-[#17181c] hover:border-[#5CAF90]">
                            <p class="m-0 capitalize">Light</p>
                        </div>
                        <div class="gi-dark-item w-[125px] mb-[10px] text-center mode dark" data-gi-mode-tool="dark">
                            <img src="assets/img/tools/dark.png" alt="dark" class="w-full p-[5px] rounded-[10px] border-[1px] border-solid border-[#17181c] hover:border-[#5CAF90]">
                            <p class="m-0 capitalize">Dark</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/shop-full-width-col-4.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:21 GMT -->
</html>
