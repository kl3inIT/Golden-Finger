<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Shop</title>
        <meta name="keywords" content="tailwindcss, ecommerce, piano">
        <meta name="description" content="Piano Shop">
        <meta name="author" content="">

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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Shop Page</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
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
                                <form id="sortForm" action="${pageContext.request.contextPath}/shop" method="GET">

                                    <div class="gi-select-inner relative flex w-[140px] h-[50px] leading-[1.5] bg-[#fff] overflow-hidden rounded-[0] border-l-[1px] border-solid border-[#eee]">
                                        <c:if test="${requestScope.sid ne 0}">
                                            <input type="hidden" name="sid" value="${sid}" /> <!-- keep param to sort -->
                                        </c:if>
                                        <input type="hidden" name="sid" value="${sid}" /> <!-- keep param to sort -->
                                        <input type="hidden" name="cid" value="${cid}" />
                                        <input type="hidden" name="page" value="${page}" />
                                        <input type="hidden" name="minPrice" value="${minPrice}" />
                                        <input type="hidden" name="maxPrice" value="${maxPrice}" />
                                        <select name="sort" id="gi-select" class="appearance-none outline-[0] border-[0] bg-[#fff] grow-[1] px-[10px] text-[#777] cursor-pointer">
                                            <option selected disabled>Sort by</option>
                                            <option value="1" ${sort == 1 ? 'selected' : ''}>Position</option>
                                            <option value="2" ${sort == 2 ? 'selected' : ''}>Name, A to Z</option>
                                            <option value="3" ${sort == 3 ? 'selected' : ''}>Name, Z to A</option>
                                            <option value="4" ${sort == 4 ? 'selected' : ''}>Price, low to high</option>
                                            <option value="5" ${sort == 5 ? 'selected' : ''}>Price, high to low</option>
                                        </select>
                                    </div>
                                </form> 
                            </div>
                        </div>

                        <!-- Shop Top End -->

                        <!-- Shop content Start -->
                        <div class="shop-pro-content">
                            <div class="shop-pro-inner mx-[-12px]">
                                <div class="flex flex-wrap w-full">
                                    <c:forEach items="${requestScope.productList}" var="p">
                                        <div class="min-[992px]:w-[25%] min-[768px]:w-[50%] min-[576px]:w-[50%] max-[420px]:w-full px-[12px] gi-product-box max-[575px]:w-[50%] max-[575px]:mx-auto pro-gl-content">
                                            <div class="gi-product-content pb-[24px] h-full flex">
                                                <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-grow flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">

                                                    <div class="gi-pro-image-outer transition-all duration-[0.3s] ease delay-[0s] z-[11] relative">
                                                        <div class="gi-pro-image overflow-hidden">
                                                            <a href="product?pid=${p.id}" class="image relative block overflow-hidden pointer-events-none transition-all duration-[0.3s] ease-in-out">

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
                                                                <a data-product-id="${p.id}" class="gi-btn-group wishlist transition-all duration-[0.3s] ease-in-out h-[30px] w-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px]" title="Wishlist">
                                                                    <i class="fi-rr-heart transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                                <a href="javascript:void(0)" onclick="addToCart(${p.id}, 1)" title="Add To Cart" class="gi-btn-group add-to-cart transition-all duration-[0.3s] ease-in-out w-[30px] h-[30px] mx-[2px] flex items-center justify-center text-[#fff] bg-[#fff] border-[1px] border-solid border-[#eee] rounded-[5px] hover:bg-[#5CAF90]">
                                                                    <i class="fi-rr-shopping-basket transition-all duration-[0.3s] ease-in-out text-[#777] leading-[10px]"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                        <a href="product?pid=${p.id}">
                                                            <h6 class="gi-pro-stitle mb-[10px] font-normal text-[#999] text-[13px] capitalize font-manrope tracking-[0.01rem] leading-[1.2]">${p.category.name}</h6>
                                                        </a>
                                                        <h5 class="gi-pro-title h-full mb-[10px] text-[16px] tracking-[0.01rem] font-normal leading-[1.2]">
                                                            <a href="product?pid=${p.id}" class="text-[#4b5966] block text-[14px] leading-[22px] font-normal tracking-[0.85px] capitalize font-Poppins">${p.name}</a>
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
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- Pagination Start -->
                            <div class="gi-pro-pagination pt-[15px] flex justify-between items-center border-t-[1px] border-solid border-[#eee] max-[575px]:flex-col">
                                <span class="text-[14px] text-[#777] max-[575px]:mb-[10px]">
                                    <c:if test="${totalProducts ge 3}">
                                        Showing 3 of ${totalProducts} products
                                    </c:if>
                                    <c:if test="${totalProducts lt 3}">
                                        Showing ${totalProducts} of ${totalProducts} products
                                    </c:if>    
                                </span>
                                <ul class="gi-pro-pagination-inner">
                                    <c:forEach begin="1" end="${endPage}" var="i">
                                        <li class="inline-block float-left mr-[5px]">
                                            <a class="transition-all duration-[0.3s] ease-in-out w-[32px] h-[32px] font-light text-[#777]
                                               leading-[32px] bg-[#eee] flex text-center align-top text-[16px] justify-center
                                               items-center rounded-[5px] ${i==page?'active':'hover:text-[#fff] hover:bg-[#5CAF90]'}" 
                                               href="javascript:void(0)" onclick="navigateToPage(${i})">${i}</a>
                                        </li>
                                    </c:forEach>

                                    <c:if test="${page < endPage}">
                                        <li class="inline-block float-left">
                                            <a class="next w-auto px-[13px] text-[#fff] bg-[#5CAF90] leading-[30px] h-[32px] flex
                                               text-center align-top text-[16px] justify-center items-center rounded-[5px]" 
                                               href="javascript:void(0)" onclick="navigateToPage(${page+1})">
                                                Next <i class="gicon gi-angle-right ml-[10px] transition-all duration-[0.3s] ease-in-out text-[#fff]"></i>
                                            </a>
                                        </li>
                                    </c:if>
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
                                            <c:forEach items="${categoryList}" var="category">
                                                <li>
                                                    <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                        <input type="checkbox" 
                                                               name="categories" 
                                                               value="${category.id}" 
                                                               ${cid == category.id ? 'checked' : ''}
                                                               class="filter-checkbox w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]"
                                                               onchange="applyFilters()">
                                                        <a href="javascript:void(0)" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                            <span class="flex">${category.name}</span>
                                                        </a>
                                                        <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>
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
                                            <c:forEach items="${supplierCountProductList}" var="supplier" >
                                                <li>
                                                    <div class="gi-sidebar-block-item py-[15px] relative flex flex-row">
                                                        <input type="checkbox" 
                                                               name="supplier" 
                                                               value="${supplier.key.id}"
                                                               ${sid == supplier.key.id ? 'checked' : ''}
                                                               class="w-full h-[calc(100% - 5px)] absolute opacity-[0] cursor-pointer z-[9] top-[50%] translate-y-[-50%]"
                                                               onchange="applyFilters()">
                                                        <a href="#" class="w-full text-[#777] text-[14px] mt-[0] leading-[20px] font-normal capitalize cursor-pointer flex justify-between pl-[30px]">
                                                            <span class="flex">${supplier.key.companyName}</span>
                                                        </a>
                                                        <span class="checked absolute top-[50%] left-[0] h-[18px] w-[18px] bg-[#fff] border-[1px] border-solid border-[#eee] transition-all duration-[300ms] linear translate-y-[-50%] rounded-[5px] overflow-hidden"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>
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
                                                    <input type="number" id="minPrice" name="minPrice" value="${minPrice}"
                                                           class="filter__input rounded-[5px] h-[30px] border-[0] p-[0] max-w-[80px] leading-[30px] bg-[#fff] text-center text-[14px] text-[#777] outline-[0]"
                                                           >
                                                </label>
                                                <span class="gi-price-divider relative border-b-[1px] border-solid border-[#777] w-[10px] h-[1px] mx-[10px]"></span>
                                                <label class="filter__label text-[14px] text-[#777] flex flex-col justify-center items-center">
                                                    To
                                                    <input type="number" id="maxPrice" name="maxPrice" value="${maxPrice}"
                                                           class="filter__input rounded-[5px] h-[30px] border-[0] p-[0] max-w-[80px] leading-[30px] bg-[#fff] text-center text-[14px] text-[#777] outline-[0]"
                                                           >
                                                </label>
                                            </div>
                                            <button type="button" onclick="applyFilters()" 
                                                    class="filter-apply-btn bg-[#5CAF90] text-white py-[5px] px-[15px] rounded-[5px] text-[14px] hover:bg-[#4a9a7d] transition-all duration-300">
                                                Apply
                                            </button>            
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

        <!-- Back to top  -->
        <a class="gi-back-to-top inline-block bg-[#4b5966] w-[40px] h-[40px] text-center rounded-[4px] fixed bottom-[30px] right-[30px] opacity-[0] invisible z-[16] border-[1px] border-solid border-[#fff] hover:cursor-pointer hover:bg-[#000] hover:opacity-[1] max-[767px]:bottom-[15px] max-[767px]:right-[15px]"></a>

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

        <script>
                                                function applyFilters() {
                                                    // Get selected categories
                                                    const selectedCategories = Array.from(document.querySelectorAll('input[name="categories"]:checked'))
                                                            .map(cb => cb.value);

                                                    const selectedSupplier = Array.from(document.querySelectorAll('input[name="supplier"]:checked'))
                                                            .map(cb => cb.value);

                                                    // Get price range
                                                    const minPrice = document.getElementById('minPrice').value;
                                                    const maxPrice = document.getElementById('maxPrice').value;

                                                    // Get current sort value
                                                    const sortSelect = document.getElementById('gi-select');
                                                    const sortValue = sortSelect.value;

                                                    // Build query string
                                                    let queryParams = new URLSearchParams();

                                                    // Add categories
                                                    if (selectedCategories.length > 0) {
                                                        queryParams.append('cid', selectedCategories[0]);
                                                    }

                                                    if (selectedSupplier.length > 0) {
                                                        queryParams.append('sid', selectedSupplier[0]);
                                                    }

                                                    // Add price range
                                                    if (minPrice)
                                                        queryParams.append('minPrice', minPrice);
                                                    if (maxPrice)
                                                        queryParams.append('maxPrice', maxPrice);

                                                    // Add sort
                                                    if (sortValue && sortValue !== 'Sort by') {
                                                        queryParams.append('sort', sortValue);
                                                    }

                                                    // Add current page if exists
                                                    const currentPage = new URLSearchParams(window.location.search).get('page');
                                                    if (currentPage) {
                                                        queryParams.append('page', currentPage);
                                                    }

                                                    // Redirect with filters
                                                    window.location.href = 'shop?' + queryParams.toString();
                                                }

        </script>
        <script> // auto submit when user select
            document.getElementById('gi-select').addEventListener('change', function () {
                document.getElementById('sortForm').submit();
            });
        </script>

        <script>
            function navigateToPage(pageNumber) {
                // Lấy các tham số hiện tại
                const urlParams = new URLSearchParams(window.location.search);

                // Cập nhật tham số page
                urlParams.set('page', pageNumber);

                // Chuyển hướng đến URL mới
                window.location.href = 'shop?' + urlParams.toString();
            }
        </script>

        <script>
            function addToCart(productId, quantity) {
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

</html>
