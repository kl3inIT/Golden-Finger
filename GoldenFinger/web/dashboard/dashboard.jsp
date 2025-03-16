<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="Grabit - Admin.">
        <meta name="author" content="Maraviya Infotech">

        <title>Dashboard</title>

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
                                            <li><a href="login"><i class="ri-logout-circle-r-line"></i>Logout</a></li>
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
                    <a href="admin" class="sb-full"><img src="dashboard/assets/img/logo/logo.png" alt="logo"></a>
                    <a href="admin" class="sb-collapse"><img src="dashboard/assets/img/logo/logo.png" alt="logo"></a>
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

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-shield-user-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Customers</h4>
                                                    <h5>${totalCustomers}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${customerGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${customerGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${customerGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-shopping-bag-3-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Order</h4>
                                                    <h5>${totalOrders}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${orderGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${orderGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${orderGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-money-dollar-circle-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Revenue</h4>
                                                    <h5>$${String.format("%.0f", totalRevenue)}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${revenueGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${revenueGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${revenueGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xxl-12 col-xl-12">
                            <div class="gi-card revenue-overview">
                                <div class="gi-card-header header-575">
                                    <h4 class="gi-card-title">Revenue Overview</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i
                                                class="ri-fullscreen-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content">
                                    <div class="gi-chart-header">
                                        <div class="block">
                                            <h6>Orders</h6>
                                            <h5>${totalOrders}
                                                <span class="${orderGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${orderGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${orderGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Revenue</h6>
                                            <h5>$${String.format("%.2f", totalRevenue/1000)}k
                                                <span class="${revenueGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${revenueGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${revenueGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Customers</h6>
                                            <h5>${totalCustomers}
                                                <span class="${customerGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${customerGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${customerGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="gi-chart-content">
                                        <div id="newrevenueChart" class="mb-m-24"></div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xxl-12 col-xl-12">
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
                                                    <c:forEach items="${recentOrders}" var="order">
                                                        <tr>
                                                            <td class="token">#${order.id}</td>
                                                            <td>${order.fullName}</td>
                                                            <td>$${String.format("%.2f", order.totalAmount)}</td>
                                                            <td>${order.date}</td>
                                                            <td class="paid">
                                                                <div class="dropdown">
                                                                    <span class="dropdown-toggle">${order.status.statusName}</span>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="canceled" href="#">Canceled</a></li>
                                                                        <li><a class="pending" href="#">Pending</a></li>
                                                                        <li><a class="comfirmed" href="#">Comfirmed</a></li>
                                                                        <li><a class="shipping" href="#">Shipping</a></li>
                                                                        <li><a class="delivered" href="#">Delivered</a></li>
                                                                        <li><a class="failed" href="#">Failed</a></li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td><a href="orderdetail?id=${order.id}" class="gi-btn default-btn color-info">view</a></td>
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
                    <div class="row">

                        <div class="col-xxl- col-xl-12">
                            <div class="gi-card" id="top_product_tbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Top Product</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i
                                                class="ri-fullscreen-line"></i></a>
                                        <div class="gi-date-range dots">
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="top-product-table">
                                        <div class="table-responsive">
                                            <table id="top_product_data_table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Price</th>
                                                        <th>Orders</th>
                                                        <th>Stock</th>
                                                        <th>Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${topProducts}" var="product">
                                                        <tr>
                                                            <td>
                                                                <img class="cat-thumb" src="${product.image[0]}" alt="Product Image">
                                                                <span class="name">${product.name}</span>
                                                            </td>
                                                            <td>$${String.format("%.2f", product.price)}</td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${orderCountByProductId[product.id] != null}">
                                                                        ${orderCountByProductId[product.id]}
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        0
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td>${product.unitInStock}</td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${totalRevenueByProductId[product.id] != null}">
                                                                        $${String.format("%.2f", totalRevenueByProductId[product.id])}
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        $0.00
                                                                    </c:otherwise>
                                                                </c:choose>
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

        <script>
            var revenueData = ${revenueData};
            var ordersData = ${ordersData};
            var customersData = ${customersData};
        </script>

        <!-- Main Custom -->
        <script src="dashboard/assets/js/main.js"></script>
        <script src="dashboard/assets/js/data/ecommerce-chart-data.js"></script>
    </body>


</html>