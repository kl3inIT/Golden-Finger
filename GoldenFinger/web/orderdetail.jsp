<%-- 
    Document   : dashboard
    Created on : Mar 10, 2025, 11:23:45 AM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-----------------------------------------------------------------------------------
Item Name: Grabit - Multipurpose eCommerce HTML Template.
Author: Maraviya Infotech
Version: 3.0.2
Copyright 2024
----------------------------------------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/admin by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Mar 2025 05:33:51 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="Grabit - Admin.">
        <meta name="author" content="Maraviya Infotech">

        <title>Order detail</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/img/favicon/favicon.png">

        <!-- Icon CSS -->
        <link href="dashboard/assets/css/vendor/materialdesignicons.min.css" rel="stylesheet">
        <link href="dashboard/assets/css/vendor/remixicon.css" rel="stylesheet">
        <link href="dashboard/assets/css/vendor/owl.carousel.min.css" rel="stylesheet">

        <!-- Vendor CSS -->
        <link href='dashboard/assets/css/vendor/datatables.bootstrap5.min.css' rel='stylesheet'>
        <link href='dashboard/assets/css/vendor/responsive.datatables.min.css' rel='stylesheet'>
        <link href='dashboard/assets/css/vendor/daterangepicker.css' rel='stylesheet'>
        <link href="dashboard/assets/css/vendor/simplebar.css" rel="stylesheet">
        <link href="dashboard/assets/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="dashboard/assets/css/vendor/apexcharts.css" rel="stylesheet">
        <link href="dashboard/assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet">

        <!-- Main CSS -->
        <link id="main-css" href="dashboard/assets/css/style.css" rel="stylesheet">
        <style>
            .option{
                display: flex;
                justify-content: space-between;
                margin-top: 20px
            }
        </style>
    </head>

    <body>
        <main class="wrapper sb-default ecom">


            <!-- main content -->
            <div class="">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card gi-invoice max-width-1170">

                                <div class="gi-card-content card-default">

                                    <div class="invoice-wrapper">

                                        <div class="row">
                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                <a href="home">
                                                    <img src="assets/img/logo/logo.png" alt="logo" style="height: 100px; width: 200px;">
                                                </a>                                               
                                                <address>
                                                    <br> Khu cong nghe cao Hoa Lac - Km29, ĐCT08, Thach Hoa, Thach That, Ha Noi, Viet Nam
                                                </address>
                                            </div>
                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                <p class="text-dark mb-2">From</p>

                                                <address>
                                                    <span>Golden Finger</span>
                                                    <br> FPT University - PRJ301
                                                    <br> <span>Email:</span> chande36@gmail.com
                                                    <br> <span>Phone:</span> 0982226376
                                                </address>
                                            </div>
                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                <p class="text-dark mb-2">To</p>

                                                <address>
                                                    <span>${requestScope.order.fullName}</span>
                                                    <br> ${requestScope.order.address}                                    
                                                    <br> <span>Phone:</span> ${requestScope.order.phone}
                                                    <br> <span>Status</span>: ${requestScope.order.status.statusName}
                                                </address>
                                            </div>

                                        </div>
                                        <div class="gi-chart-header">
                                            <div class="block">
                                                <h6>Invoice</h6>
                                                <h5>#${requestScope.order.id}
                                                </h5>
                                            </div>
                                            <div class="block">
                                                <h6>Amount</h6>
                                                <h5>
                                                    $<fmt:formatNumber value="${requestScope.order.totalAmount}" maxFractionDigits="2" minFractionDigits="0" />
                                                </h5>
                                            </div>
                                            <div class="block">
                                                <h6>Quantity</h6>        
                                                <h5>${requestScope.totalQuantity}
                                                </h5>
                                            </div>
                                            <div class="block">
                                                <h6>Date</h6>
                                                <h5>${requestScope.order.date}
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="table-responsive tbl-800">
                                            <div>
                                                <table class="table-invoice table-striped" style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Product</th>
                                                            <th>Name</th>
                                                            <th>Category</th>
                                                            <th>Quantity</th>
                                                            <th>Unit_Cost</th>
                                                            <th>Total</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="item" items="${requestScope.orderDetailList}" varStatus="loop">
                                                            <tr>
                                                                <td>${loop.index + 1}</td>
                                                                <td><img class="invoice-item-img" src="${item.product.image[0]}"
                                                                         alt="product-image"></td>
                                                                <td>${item.product.name} </td>
                                                                <td>${item.product.category.name}</td>
                                                                <td>${item.quantity}</td>
                                                                <td> $<fmt:formatNumber value="${(item.unitPrice - item.unitPrice * item.discount)}" maxFractionDigits="2" minFractionDigits="0" /></td>
                                                                <td>$<fmt:formatNumber value="${(item.unitPrice - item.unitPrice * item.discount) * item.quantity}" maxFractionDigits="2" minFractionDigits="0" /></td>
                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="row justify-content-end inc-total">
                                            <div class="col-lg-9 order-lg-1 order-md-2 order-sm-2">
                                                <div class="note">
                                                    <label>Comment</label>
                                                    <p>${requestScope.order.comment}</p>

                                                </div>
                                            </div>
                                            <div class="col-lg-3 order-lg-2 order-md-1 order-sm-1">
                                                <ul class="list-unstyled">
                                                    <li class="mid pb-3 text-dark"> Subtotal
                                                        <span
                                                            class="d-inline-block float-right text-default">$<fmt:formatNumber value="${requestScope.order.totalAmount}" maxFractionDigits="2" minFractionDigits="0" /></span>
                                                    </li>

                                                    <li class="mid pb-3 text-dark">Vat(0%)
                                                        <span class="d-inline-block float-right text-default">$0.00</span>
                                                    </li>

                                                    <li class="text-dark">Total
                                                        <span class="d-inline-block float-right">$<fmt:formatNumber value="${requestScope.order.totalAmount}" maxFractionDigits="2" minFractionDigits="0" /></span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 option">
                                        <c:if test="${requestScope.order.status.id == 1}">
                                            <button onclick="sendOrderId(${requestScope.order.id})" class="gi-btn default-btn color-secondary">Cancel Order</button>
                                        </c:if>
                                      
                                            <a href="orderhistory">
                                                <button class="gi-btn default-btn color-success">Back</button>
                                            </a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>







        </main>

        <!-- Vendor Custom -->
        <script src="dashboard/assets/js/vendor/jquery-3.6.4.min.js"></script>
        <script src="dashboard/assets/js/vendor/simplebar.min.js"></script>
        <script src="dashboard/assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="dashboard/assets/js/vendor/apexcharts.min.js"></script>
        <script src="dashboard/assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="dashboard/assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
        <script src="dashboard/assets/js/vendor/owl.carousel.min.js"></script>
        <!-- Data Tables -->
        <script src='dashboard/assets/js/vendor/jquery.datatables.min.js'></script>
        <script src='dashboard/assets/js/vendor/datatables.bootstrap5.min.js'></script>
        <script src='dashboard/assets/js/vendor/datatables.responsive.min.js'></script>
        <!-- Caleddar -->
        <script src="dashboard/assets/js/vendor/jquery.simple-calendar.js"></script>
        <!-- Date Range Picker -->
        <script src="dashboard/assets/js/vendor/moment.min.js"></script>
        <script src="dashboard/assets/js/vendor/daterangepicker.js"></script>
        <script src="dashboard/assets/js/vendor/date-range.js"></script>

        <!-- Main Custom -->
        <script src="dashboard/assets/js/main.js"></script>
        <script src="dashboard/assets/js/data/ecommerce-chart-data.js"></script>
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


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/admin by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Mar 2025 05:34:21 GMT -->
</html>