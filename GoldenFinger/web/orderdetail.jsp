<%-- 
    Document   : wishlist
    Created on : Mar 4, 2025, 11:34:39 AM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Order Detail</title>
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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Order Detail Page</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="index.html" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Order Detail Page</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Wishlist section -->
        <section class="gi-faq py-[40px] max-[767px]:py-[30px] gi-wishlist">
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">

                <div class="flex flex-wrap w-full">
                    <div class="w-full px-[12px]">
                        <div class="gi-vendor-dashboard-card border-[1px] border-solid border-[#eee] rounded-[5px] overflow-y-auto">
                            <div class="gi-vendor-card-header min-w-[700px] p-[30px] border-b-[1px] border-solid border-[#eee] flex justify-between items-center">

                                <h5 class="m-[0] text-[18px] uppercase font-bold text-[#777] tracking-[0.01rem] leading-[1.2]">
                                    Order ${requestScope.order.id} :    <span class="max-[767px]:text-[14px] py-[14px]  text-[#5caf90] tracking-[0.02rem]">
                                        $<fmt:formatNumber value="${requestScope.order.totalAmount}" maxFractionDigits="2" minFractionDigits="0" />
                                    </span>

                                </h5>
                                <c:if test="${requestScope.order.status.id == 1 || requestScope.order.status.id == 2}">
                                    <div class="gi-header-btn">
                                        <a onclick="sendOrderId(${requestScope.order.id})"  class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[15px] text-[14px] font-medium bg-[#FF0000] text-[#fff] text-center rounded-[5px] hover:bg-[#FF6666] hover:text-[#fff]" href="javascript:void(0)">Cancel order</a>
                                    </div>
                                </c:if>
                            </div>
                            <div class="gi-vendor-card-body min-w-[700px] p-[30px]">
                                <div class="gi-vendor-card-table">
                                    <table class="table gi-table w-full mb-[1rem]">
                                        <thead>
                                            <tr>

                                                <th scope="col" class="p-[0.5rem] text-left text-[#4b5966]">Product</th>
                                                <th scope="col" class="p-[0.5rem] text-left text-[#4b5966]">Name</th>

                                                <th scope="col" class="p-[0.5rem] text-left text-[#4b5966] text-center">Quantity</th>
                                                <th scope="col" class="p-[0.5rem] text-left text-[#4b5966]">Price</th>
                                                <th scope="col" class="p-[0.5rem] text-left text-[#4b5966]">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody class="wish-empt border-t-[3px] border-solid border-[#eee] border-solid border-[#dee2e6]">
                                            <c:forEach var="odd" items="${requestScope.orderDetailList}">


                                                <tr class="pro-gl-content">

                                                    <td class="p-[0.5rem] border-b-[1px] border-solid border-[#dee2e6]">
                                                        <a href="product?pid=${odd.product.id}">
                                                            <c:if test="${not empty odd.product.image[0]}">
                                                                <img class="prod-img h-[58px] w-[58px]" src="${odd.product.image[0]}" alt="product image">
                                                            </c:if>

                                                        </a>
                                                    </td>
                                                    <td class="p-[0.5rem] border-b-[1px] border-solid border-[#dee2e6]"><span class="max-[767px]:text-[14px] py-[14px] flex text-[#777] tracking-[0.02rem]">${odd.product.name}</span></td>

                                                    <td class="p-[0.5rem] border-b-[1px] border-solid border-[#dee2e6] text-center">
                                                        <span class="max-[767px]:text-[14px] py-[14px] flex justify-center text-[#777] tracking-[0.02rem]">
                                                            ${odd.quantity}
                                                        </span>
                                                    </td>

                                                    <td class="p-[0.5rem] border-b-[1px] border-solid border-[#dee2e6]">
                                                        <span class="max-[767px]:text-[14px] py-[14px] flex text-[#5caf90] tracking-[0.02rem]">
                                                            $<fmt:formatNumber value="${odd.unitPrice - odd.unitPrice * odd.discount}" maxFractionDigits="2" minFractionDigits="0" />
                                                        </span>
                                                    </td>



                                                    <td class="p-[0.5rem] border-b-[1px] border-solid border-[#dee2e6]">
                                                        <span class="max-[767px]:text-[14px] py-[14px] flex text-[#5caf90] tracking-[0.02rem]">
                                                            $<fmt:formatNumber value="${(odd.unitPrice - odd.unitPrice * odd.discount) * odd.quantity}" maxFractionDigits="2" minFractionDigits="0" />
                                                        </span>
                                                    </td>
                                                </tr>  
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Wishlist section End -->





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
                                            function sendOrderId(orderId) {
                                                $.ajax({
                                                    type: "POST",
                                                    url: "cancel",
                                                    data: {orderId: orderId},
                                                    success: function (response) {
                                                        window.location.href = "orderhistory"; // ✅ Chuyển hướng đúng sau khi hủy đơn
                                                    },
                                                    error: function () {
                                                        alert("error");
                                                    }
                                                });
                                            }

        </script>

    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/grabit-tailwind/grabit-tailwind/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 08 Feb 2025 11:03:03 GMT -->
</html>
