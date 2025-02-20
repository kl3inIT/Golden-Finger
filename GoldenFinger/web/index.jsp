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
        <jsp:include page="header"/> 
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
                                                        <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
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
                                                            <a href="javascript:void(0)" class="gi-btn-group modal-toggle quickview transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]">
                                                                <i class="fi-rr-eye transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                            <a href="javascript:void(0)" title="Add To Cart" class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                                <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                    <a href="shop-left-sidebar-col-3.html">
                                                        <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">${p.category.name}</h6>
                                                    </a>
                                                    <h5 class="gi-pro-title h-full mb-[10px] text-[16px]">
                                                        <a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">${p.name}</a>
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
                                                            <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
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
                                                            <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] leading-[1.2] capitalize">${p.category.name}</h6>
                                                        </a>
                                                        <h5 class="gi-pro-title h-full mb-[10px] text-[16px]"><a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">${p.name}</a></h5>
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
