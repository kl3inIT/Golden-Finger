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

        <jsp:include page="header.jsp" />

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
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
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
                                                    <button type="button" onclick="addToCart(${p.id})" class=" btn btn-primary add-to-cart gi-btn-1 flex h-[40px] leading-[50px] text-center text-[14px] m-[5px] py-[10px] px-[15px] uppercase justify-center bg-[#4b5966] text-[#fff] transition-all duration-[0.3s] ease-in-out relative rounded-[5px] items-center min-w-[160px] font-semibold tracking-[0.02rem] border-[0] hover:bg-[#5caf90] hover:text-[#fff]">Add To Cart</button>
                                                </div>
                                                <div class="gi-single-wishlist m-[5px]">
                                                    <c:set var="isActive" value="false"/>
                                                    <c:forEach var="w" items="${requestScope.wishlist}">
                                                        <c:if test="${w.product.id eq p.id}">
                                                            <c:set var="isActive" value="true"/>
                                                        </c:if>
                                                    </c:forEach>

                                                    <a data-product-id="${p.id}" class="${isActive ? 'active' : ''} gi-btn-group wishlist w-[40px] h-[40px] flex items-center justify-center transition-all duration-[0.3s] ease delay-[0s] text-[#17181c] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:text-[#fff] hover:bg-[#5caf90] hover:border-[#5caf90]" title="Wishlist">
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

        <jsp:include page="footer.jsp" />


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

        <script>
                                                        function addToCart(productId) {
                                                            var quantity = $(".qty-input").val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "cart",
                                                                data: {
                                                                    productId: productId,
                                                                    quantity: quantity
                                                                }
                                                            });
                                                        }

        </script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/product-full-width.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:23 GMT -->
</html>
