

=======
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

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="Grabit - Admin.">
        <meta name="author" content="Maraviya Infotech">

        <title>Product List</title>

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
        </div>
        <!-- main content -->
        <div class="gi-main-content">
            <div class="container-fluid">
                <!-- Page title & breadcrumb -->
                <div class="gi-page-title gi-page-title-2">
                    <div class="gi-breadcrumb">
                        <h5>Product List</h5>
                        <ul>
                            <li><a href="admin">Dashboard</a></li>
                            <li>Product List</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="gi-card card-default product-list">
                            <div class="gi-card-content ">
                                <div class="table-responsive">
                                    <table id="product_list" class="table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Offer</th>
                                                <th>Purchased</th>
                                                <th>Discount</th>
                                                <th>Stock</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach var="p" items="${requestScope.listProduct}">
                                                <tr>
                                                    <td>

                                                        <img class="tbl-thumb" src="${p.image[0]}"
                                                             alt="Product Image">
                                                    </td>
                                                    <td>${p.name}</td>
                                                    <td>${p.category.name}</td>
                                                    <td>$<fmt:formatNumber value="${p.price}" maxFractionDigits="2" minFractionDigits="0" /></td>

                                                    <td><fmt:formatNumber value="${p.discount * 100}" maxFractionDigits="0" minFractionDigits="0" />%</td>
                                                    <td><span class="active">${p.unitInStock}</span></td>
                                                        <c:if test="${p.status == 1}">
                                                        <td>
                                                            <span class="active">Enable</span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${p.status == 0}">
                                                        <td>
                                                            <span style="color: #ff4f7f;">Disable</span>
                                                        </td>
                                                    </c:if>
                                                    <td>
                                                        <div class="d-flex justify-content-start">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="updateproduct?pid=${p.id}">Edit</a>
                                                                <a class="dropdown-item" onclick="action(${p.id}, 'disable')" href="javascript:void(0)">Disable</a>
                                                                <a class="dropdown-item" onclick="action(${p.id}, 'enable')"  href="javascript:void(0)">Enable</a>
                                                            </div>
                                                        </div>
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
                                                                    function action(productId, type) {
                                                                        $.ajax({
                                                                            type: "POST",
                                                                            url: "productlist",
                                                                            data: {
                                                                                productId: productId,
                                                                                type: type
                                                                            },
                                                                            success: function () {
                                                                                window.location.reload();
                                                                            }
                                                                        });
                                                                    }


    </script>
</body>

</html>