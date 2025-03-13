<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Payment Result</title>
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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Payment Result</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="checkout" class="relative text-[#4b5966]">Checkout</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Payment Result</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Payment Result Section -->
        <section class="py-[40px] max-[767px]:py-[30px]">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="w-full px-[12px]">
                    <div class="bg-white p-[30px] border border-[#eee] rounded-[5px] shadow-sm">

                        <!-- Payment Status -->
                        <div class="text-center mb-[30px]">
                            <c:choose>
                                <c:when test="${requestScope.paymentSuccess}">
                                    <div class="inline-block p-[15px] bg-[rgba(92,175,144,0.1)] rounded-full mb-[15px]">
                                        <i class="gicon gi-check-circle text-[48px] text-[#5caf90]"></i>
                                    </div>
                                    <h2 class="text-[24px] font-semibold text-[#4b5966] mb-[10px]">Payment Successful</h2>
                                    <p class="text-[16px] text-[#777]">Your order has been placed successfully.</p>
                                </c:when>
                                <c:otherwise>
                                    <div class="inline-block p-[15px] bg-[rgba(220,53,69,0.1)] rounded-full mb-[15px]">
                                        <i class="gicon gi-times-circle text-[48px] text-[#dc3545]"></i>
                                    </div>
                                    <h2 class="text-[24px] font-semibold text-[#4b5966] mb-[10px]">Payment Failed</h2>
                                    <p class="text-[16px] text-[#777]">${requestScope.errorMessage}</p>
                                </c:otherwise>
                            </c:choose>
                        </div>

                        <!-- Transaction Details -->
                        <div class="border border-[#eee] rounded-[5px] overflow-hidden mb-[30px]">
                            <h3 class="text-[18px] font-semibold bg-[#f8f9fa] p-[15px] border-b border-[#eee]">Transaction Details</h3>
                            <div class="p-[20px]">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-[15px]">
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Transaction Reference:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.vnp_TxnRef}</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Transaction Date:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.vnp_PayDate}</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Payment Method:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">VNPay</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Bank Code:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.vnp_BankCode}</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Transaction No:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.vnp_TransactionNo}</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Response Code:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.vnp_ResponseCode}</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Order Details -->
                        <div class="border border-[#eee] rounded-[5px] overflow-hidden mb-[30px]">
                            <h3 class="text-[18px] font-semibold bg-[#f8f9fa] p-[15px] border-b border-[#eee]">Order Details</h3>
                            <div class="p-[20px]">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-[15px]">
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Order ID:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.orderId}</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Order Date:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">${requestScope.orderDate}</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Payment Amount -->
                        <div class="border border-[#eee] rounded-[5px] overflow-hidden mb-[30px]">
                            <h3 class="text-[18px] font-semibold bg-[#f8f9fa] p-[15px] border-b border-[#eee]">Payment Amount</h3>
                            <div class="p-[20px]">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-[15px]">
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Amount (USD):</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">$<fmt:formatNumber value="${requestScope.amountUsd}" maxFractionDigits="2" minFractionDigits="2" /></p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Amount (VND):</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]"><fmt:formatNumber value="${requestScope.amountVnd}" maxFractionDigits="0" minFractionDigits="0" /> VND</p>
                                    </div>
                                    <div class="border-b border-[#eee] pb-[10px]">
                                        <p class="text-[14px] text-[#777] mb-[5px]">Exchange Rate:</p>
                                        <p class="text-[16px] font-medium text-[#4b5966]">1 USD = <fmt:formatNumber value="${requestScope.exchangeRate}" maxFractionDigits="0" minFractionDigits="0" /> VND</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="flex flex-wrap justify-center gap-[15px] mt-[30px]">
                            <a href="orderhistory" class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[20px] text-[14px] font-medium bg-[#5caf90] text-[#fff] text-center rounded-[5px] hover:bg-[#4b5966] hover:text-[#fff]">
                                View Order History
                            </a>
                            <a href="home" class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[20px] text-[14px] font-medium bg-[#4b5966] text-[#fff] text-center rounded-[5px] hover:bg-[#5caf90] hover:text-[#fff]">
                                Continue Shopping
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Payment Result Section End -->

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
    </body>

</html>