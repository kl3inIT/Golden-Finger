<%-- 
    Document   : dashboard
    Created on : Mar 10, 2025, 11:23:45 AM
    Author     : nhudi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                    <h5>698k</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth up">
                                                <i class="ri-arrow-up-line"></i>
                                                25%
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
                                                    <h5>10.63k</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth down">
                                                <i class="ri-arrow-down-line"></i>
                                                .5%
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
                                                    <h5>$85420</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth down">
                                                <i class="ri-arrow-down-line"></i>
                                                2.1%
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
                                        <div class="gi-date-range date">
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-card-content">
                                    <div class="gi-chart-header">
                                        <div class="block">
                                            <h6>Orders</h6>
                                            <h5>825
                                                <span class="up"><i class="ri-arrow-up-line"></i>24%</span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Revenue</h6>
                                            <h5>$89k
                                                <span class="up"><i class="ri-arrow-up-line"></i>24%</span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Customers</h6>
                                            <h5>$68k
                                                <span class="down"><i class="ri-arrow-down-line"></i>24%</span>
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
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i
                                                class="ri-fullscreen-line"></i></a>
                                        <div class="gi-date-range dots">
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="order-table">
                                        <div class="table-responsive">
                                            <table id="recent_order_data_table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Product</th>
                                                        <th>Customer</th>
                                                        <th>Amount</th>
                                                        <th>Status</th>
                                                        <th>vendor</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="token">#fx2650</td>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/1.jpg"
                                                                 alt="clients Image"><span class="name">Mens t-shirt</span>
                                                        </td>
                                                        <td>Avira Venusio</td>
                                                        <td>$15</td>
                                                        <td class="cod">COD</td>
                                                        <td>Melborn Fashion</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-xxl-12 col-xl-12">
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
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/1.jpg"
                                                                 alt="clients Image"><span class="name">Mens t-shirt</span>
                                                        </td>
                                                        <td>$16</td>
                                                        <td>162</td>
                                                        <td>456</td>
                                                        <td>$3524</td>
                                                    </tr>
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/2.jpg"
                                                                 alt="clients Image"><span class="name">Sofa chair</span>
                                                        </td>
                                                        <td>$52</td>
                                                        <td>178</td>
                                                        <td>958</td>
                                                        <td>$8654</td>
                                                    </tr>
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/3.jpg"
                                                                 alt="clients Image"><span class="name">Night Lamp</span>
                                                        </td>
                                                        <td>$70</td>
                                                        <td>198</td>
                                                        <td>1524</td>
                                                        <td>$1152</td>
                                                    </tr>
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/4.jpg"
                                                                 alt="clients Image"><span class="name">Mens hoodie</span>
                                                        </td>
                                                        <td>$16</td>
                                                        <td>205</td>
                                                        <td>253</td>
                                                        <td>$5645</td>
                                                    </tr>
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/5.jpg"
                                                                 alt="clients Image"><span class="name">Digital Watch</span>
                                                        </td>
                                                        <td>$559</td>
                                                        <td>209</td>
                                                        <td>456</td>
                                                        <td>$20546</td>
                                                    </tr>
                                                    <tr>
                                                        <td><img class="cat-thumb" src="dashboard/assets/img/product/6.jpg"
                                                                 alt="clients Image"><span class="name">DSLR Camera.</span>
                                                        </td>
                                                        <td>$1546</td>
                                                        <td>212</td>
                                                        <td>98</td>
                                                        <td>$33500</td>
                                                    </tr>
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
    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/admin by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Mar 2025 05:34:21 GMT -->
</html>