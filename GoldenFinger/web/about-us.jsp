<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>About Us</title>
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

        <!-- Header -->
        <jsp:include page="header.jsp" />

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

</html>