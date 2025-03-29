<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="GoldenFinger - Admin.">

        <title>Order List</title>

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

    </head>

    <body>
        <main class="wrapper sb-default ecom">
            <!-- Loader -->
            <div id="gi-overlay">
                <div class="loader"></div>
            </div>

            <!-- Header -->
            <header class="gi-header">
                <div class="container-fluid">
                    <div class="gi-header-items">
                        <div class="left-header">

                            <div class="header-search-box">
                                <div class="header-search-drop">
                                    <a href="javascript:void(0)" class="open-search"><i class="ri-search-line"></i></a>
                                    <form class="gi-search">
                                        <input class="search-input" type="text" placeholder="Search...">
                                        <a href="javascript:void(0)" class="search-btn"><i class="ri-search-line"></i>
                                        </a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="right-header">




                            <div class="gi-right-tool gi-user-drop">
                                <div class="gi-hover-drop">
                                    <div class="gi-hover-tool">
                                        <img class="user" src="dashboard/assets/img/user/1.jpg" alt="user">
                                    </div>
                                    <div class="gi-hover-drop-panel right">

                                        <ul class="">
                                            <li><a href="team-profile.html">Profile</a></li>
                                            <li><a href="faq.html">Help</a></li>
                                            <li><a href="chatapp.html">Messages</a></li>
                                            <li><a href="project-overview.html">Projects</a></li>
                                            <li><a href="team-update.html">Settings</a></li>
                                        </ul>
                                        <ul class="border-top">
                                            <li><a href="signin.html"><i class="ri-logout-circle-r-line"></i>Logout</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- sidebar -->
            <div class="gi-sidebar-overlay"></div>
            <div class="gi-sidebar" data-mode="dark">
                <div class="gi-sb-logo">
                    <a href="home" class="sb-full"><img src="dashboard/assets/img/logo/logo.png" alt="logo"></a>
                    <a href="home" class="sb-collapse"><img src="dashboard/assets/img/logo/logo.png" alt="logo"></a>
                </div>
                <div class="gi-sb-wrapper">
                    <div class="gi-sb-content">
                        <ul class="gi-sb-list">
                            <li class="gi-sb-item">
                                <a href="admin" class="gi-page-link">
                                    <i class="ri-dashboard-3-line"></i><span class="condense"><span
                                            class="hover-title">Dashboard</span> </span>
                                </a>
                            </li>
                            <li class="gi-sb-item-separator"></li>
                            <li class="gi-sb-title condense">Apps</li>

                            <li class="gi-sb-item">

                            </li>
                            <li class="gi-sb-item sb-drop-item">
                                <a href="javascript:void(0)" class="gi-drop-toggle">
                                    <i class="ri-shopping-cart-line"></i><span class="condense">eCommerce<i
                                            class="drop-arrow ri-arrow-down-s-line"></i></span></a>
                                <ul class="gi-sb-drop condense">
                                    <li><a href="productlist" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Product list</a></li>
                                    <li><a href="addproduct" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Product</a></li>
                                    <li><a href="orderlist" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Order List</a></li>
                                    <li><a href="supplierlist" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Supplier List</a></li>
                                    <li><a href="categorylist" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Category List</a></li>
                                </ul>
                            </li>
                            <li class="gi-sb-item sb-drop-item">
                                <a href="javascript:void(0)" class="gi-drop-toggle">
                                    <i class="mdi mdi-account"></i><span class="condense">Account<i
                                            class="drop-arrow ri-arrow-down-s-line"></i></span></a>
                                <ul class="gi-sb-drop condense">
                                    <li><a href="accountlist" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Account list</a></li>
                                    <li><a href="addaccount" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Account</a></li>
                                </ul>
                            </li>


                        </ul>
                    </div>
                </div>
            </div>

            <!-- main content -->
            <div class="gi-main-content">
                <div class="container-fluid">
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Order List</h5>
                            <ul>
                                <li><a href="admin">Dashboard</a></li>
                                <li>Order List</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card" id="ordertbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Recent Orders</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card"><i
                                                class="ri-fullscreen-line"></i></a>
                                        <div class="gi-date-range dots">
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="order-table">
                                        <div class="table-responsive tbl-1200">
                                            <table id="recent_order" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>

                                                        <th>Customer</th>
                                                        <th>Amount</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="order" items="${requestScope.orders}">


                                                        <tr>
                                                            <td class="token">#${order.id}</td>

                                                            <td>${order.fullName}</td>
                                                            <td>$${String.format("%.0f", order.totalAmount)}</td>
                                                            <td>${order.date}</td>

                                                            <td class="paid">
                                                                <div class="dropdown">
                                                                    <span class="dropdown-toggle ${order.status.toLowerCase()} ">${order.status.statusName}</span>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="canceled" href="javascript:void(0)" onclick="updateStatus(0, ${order.id})">Canceled</a></li>
                                                                        <li><a class="pending" href="javascript:void(0)" onclick="updateStatus(1, ${order.id})">Pending</a></li>
                                                                        <li><a class="confirmed" href="javascript:void(0)" onclick="updateStatus(2, ${order.id})">Confirmed</a></li>
                                                                        <li><a class="shipping" href="javascript:void(0)" onclick="updateStatus(3, ${order.id})">Shipping</a></li>
                                                                        <li><a class="delivered" href="javascript:void(0)" onclick="updateStatus(4, ${order.id})">Delivered</a></li>
                                                                        <li><a class="failed" href="javascript:void(0)" onclick="updateStatus(5, ${order.id})">Failed</a></li>
                                                                    </ul>
                                                                </div>

                                                            </td>
                                                            <td><a href="invoice?oid=${order.id}"><button class="gi-btn default-btn color-info">view</button></a></td>
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
                </div>
            </div>



            <!-- Footer -->
            <footer>

            </footer>


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
                                                                            function updateStatus(statusId, orderId) {
                                                                                $.ajax({
                                                                                    type: "POST",
                                                                                    url: "orderlist",
                                                                                    data: {statusId: statusId,
                                                                                        orderId: orderId
                                                                                    },
                                                                                    success: function (response) {
                                                                                        window.location.href = "orderlist";
                                                                                    },
                                                                                    error: function () {
                                                                                        alert("error");
                                                                                    }
                                                                                });
                                                                            }

        </script>
    </body>

</html>