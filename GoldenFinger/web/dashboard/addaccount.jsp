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

        <title>Add Account</title>

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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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
                            <h5>Add Account</h5>
                            <ul>
                                <li><a href="admin">Dashboard</a></li>
                                <li>Add Account</li>
                            </ul>
                        </div>
                    </div
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card card-default">
                                <div class="gi-card-content">
                                    <div class="row gi-product-uploads">

                                        <div class="col-lg-12">
                                            <div class="gi-vendor-upload-detail">
                                                <form class="row g-3" action="addaccount" method="post">
                                                    <div class="col-md-6">
                                                        <label for="" class="form-label">Full name</label>
                                                        <input type="text" name="name" class="form-control slug-title" id="" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Select Role</label>
                                                        <select class="form-control form-select" name="role" required>
                                                            <option value="1">User</option>
                                                            <option value="2">Admin</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Username</label>
                                                        <input type="text" name="username" class="form-control" id="userInfoDisplay" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Password <span>(At least 6 characters)</span></label>
                                                        <div style="position: relative;">
                                                            <input type="password" name="password" class="form-control" minlength="6" id="passwordStrength" required 
                                                                   style="padding-right: 40px;">
                                                            <i id="toggleIcon" class="fa fa-eye" onclick="togglePassword()" 
                                                               style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); cursor: pointer; font-size: 18px;">
                                                            </i>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <label class="form-label">Email</label>
                                                        <input type="email" name="email" class="form-control" id="emailVerificationForm" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="" class="form-label">Address</label>
                                                        <input type="text" name="address" class="form-control slug-title" id="" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Status</label>
                                                        <select class="form-control form-select" name="status" required>
                                                            <option value="1">Enable</option>
                                                            <option value="0">Disable</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="" class="form-label">Phone</label>
                                                        <input type="text" name="phone" class="form-control slug-title" id="" required>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="" class="form-label">Birth Day</label>
                                                        <input type="date" name="dob" class="form-control slug-title" id="" required>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                    </div>
                                                </form>
                                            </div>
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
                                                                document.addEventListener("DOMContentLoaded", function () {
                                                                    let today = new Date().toISOString().split("T")[0];
                                                                    document.querySelectorAll("input[type='date']").forEach(input => {
                                                                        input.setAttribute("max", today);
                                                                    });
                                                                });

                                                                function togglePassword() {
                                                                    let passwordInput = document.getElementById("passwordStrength");
                                                                    let icon = document.getElementById("toggleIcon");

                                                                    if (passwordInput.type === "password") {
                                                                        passwordInput.type = "text";
                                                                        icon.classList.remove("fa-eye");
                                                                        icon.classList.add("fa-eye-slash");
                                                                    } else {
                                                                        passwordInput.type = "password";
                                                                        icon.classList.remove("fa-eye-slash");
                                                                        icon.classList.add("fa-eye");
                                                                    }
                                                                }
        </script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/admin by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Mar 2025 05:34:21 GMT -->
</html>