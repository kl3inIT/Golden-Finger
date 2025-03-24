<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Contact Us</title>
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
                                        <i class="fa fa-envelope text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; nhatanh@gmail.com
                                    </p>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-globe text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; fap.fpt.edu.vn                                    </p>
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
                                        <i class="fa fa-mobile text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; (+84) 923849999
                                    </p>
                                    <p class="m-[0] text-[14px] text-[#777] leading-[28px] font-light tracking-[0.02rem]">
                                        <i class="fa fa-mobile text-[14px] text-[#777] text-center" aria-hidden="true"></i> &nbsp; (+84) 923849999
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
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4582.888509081189!2d105.52271427596938!3d21.01242168833815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc60e7d3f19%3A0x2be9d7d0b5abcbf4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgSMOgIE7hu5lp!5e1!3m2!1svi!2s!4v1742805427166!5m2!1svi!2s" class="h-full w-full mb-[-7px] border-[1px] border-solid border-[#eee] rounded-[5px] max-[767px]:h-[300px]" allowfullscreen=""></iframe>
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

</html>