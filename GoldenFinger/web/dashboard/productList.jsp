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

        <title>Product List</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="dashboard/assets/img/favicon/favicon.ico">

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
                                    <li><a href="product-list.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Product list</a></li>
                                    <li><a href="addproduct" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Product</a></li>
                                    <li><a href="add-category.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Category</a></li>
                                    <li><a href="add-sub-category.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Sub Category</a></li>
                                    <li><a href="order-list.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Order List</a></li>
                                    <li class="gi-sb-item sb-subdrop-item">
                                        <a href="javascript:void(0)" class="gi-sub-drop-toggle">
                                            <i class="ri-shield-user-line"></i><span class="condense">Vendor<i
                                                    class="drop-arrow ri-arrow-down-s-line"></i></span></a>
                                        <ul class="gi-sb-subdrop condense">
                                            <li><a href="vendor-profile.html" class="gi-page-link subdrop"><i
                                                        class="ri-checkbox-blank-circle-line"></i>Profile</a></li>
                                            <li><a href="vendor-update.html" class="gi-page-link subdrop"><i
                                                        class="ri-checkbox-blank-circle-line"></i>Vendor Update</a></li>
                                            <li><a href="vendor-list.html" class="gi-page-link subdrop"><i
                                                        class="ri-checkbox-blank-circle-line"></i>Vendor List</a></li>
                                            <li><a href="invoice.html" class="gi-page-link subdrop"><i
                                                        class="ri-checkbox-blank-circle-line"></i>Invoice</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="gi-sb-item sb-drop-item">
                                <a href="javascript:void(0)" class="gi-drop-toggle">
                                    <i class="ri-shopping-cart-line"></i><span class="condense">Account<i
                                            class="drop-arrow ri-arrow-down-s-line"></i></span></a>
                                <ul class="gi-sb-drop condense">
                                    <li><a href="product-list.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Product list</a></li>
                                    <li><a href="addproduct" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Product</a></li>
                                    <li><a href="add-category.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Category</a></li>
                                    <li><a href="add-sub-category.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Add Sub Category</a></li>
                                    <li><a href="order-list.html" class="gi-page-link drop"><i
                                                class="ri-checkbox-blank-circle-line"></i>Order List</a></li>
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
                            <h5>Product List</h5>
                            <ul>
                                <li><a href="index.html">Grabit</a></li>
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
                                                    <th>Stock</th>
                                                    <th>Status</th>
                                                    <th>Date</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/1.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Mens t-shirt</td>
                                                    <td>$20</td>
                                                    <td>25% OFF</td>
                                                    <td>61</td>
                                                    <td>5421</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>05/11/2023</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/2.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Sofa seat furniture</td>
                                                    <td>$400</td>
                                                    <td>30% OFF</td>
                                                    <td>80</td>
                                                    <td>25</td>
                                                    <td><span class="pending">pending</span></td>
                                                    <td>12/08/2022</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/3.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Night lamp bedroom</td>
                                                    <td>$59</td>
                                                    <td>30% OFF</td>
                                                    <td>100</td>
                                                    <td>56</td>
                                                    <td><span class="disable">disable</span></td>
                                                    <td>25/05/2021</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/4.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Round Cap hoodies</td>
                                                    <td>$10</td>
                                                    <td>30% OFF</td>
                                                    <td>250</td>
                                                    <td>568</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>13/09/2019</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/5.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Digital watch black</td>
                                                    <td>$582</td>
                                                    <td>30% OFF</td>
                                                    <td>220</td>
                                                    <td>264</td>
                                                    <td><span class="pending">pending</span></td>
                                                    <td>18/02/2023</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/6.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Digital camera dslr</td>
                                                    <td>$1254</td>
                                                    <td>20% OFF</td>
                                                    <td>154</td>
                                                    <td>365</td>
                                                    <td><span class="disable">disable</span></td>
                                                    <td>16/11/2021</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/7.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Headphone beater m3</td>
                                                    <td>$68</td>
                                                    <td>30% OFF</td>
                                                    <td>159</td>
                                                    <td>789</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>23/04/2024</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/8.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Camera dron fly b2</td>
                                                    <td>$120</td>
                                                    <td>80% OFF</td>
                                                    <td>12</td>
                                                    <td>325</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>21/06/2023</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/9.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Drill machine dregon g1</td>
                                                    <td>$20</td>
                                                    <td>10% OFF</td>
                                                    <td>254</td>
                                                    <td>36</td>
                                                    <td><span class="pending">pending</span></td>
                                                    <td>12/12/2022</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/10.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Fly cry dron camera</td>
                                                    <td>$548</td>
                                                    <td>50% OFF</td>
                                                    <td>25</td>
                                                    <td>12</td>
                                                    <td><span class="disable">disable</span></td>
                                                    <td>12/05/2023</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/5.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Black watches s20</td>
                                                    <td>$254</td>
                                                    <td>30% OFF</td>
                                                    <td>65</td>
                                                    <td>12</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>15/06/2012</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/6.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Dslr digital camera</td>
                                                    <td>$325</td>
                                                    <td>40% OFF</td>
                                                    <td>265</td>
                                                    <td>21</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>25/04/2019</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/7.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Headphone drag g9</td>
                                                    <td>$65</td>
                                                    <td>40% OFF</td>
                                                    <td>487</td>
                                                    <td>35</td>
                                                    <td><span class="disable">disable</span></td>
                                                    <td>25/08/2022</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/8.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Orbite dron ss2</td>
                                                    <td>$754</td>
                                                    <td>40% OFF</td>
                                                    <td>12</td>
                                                    <td>48</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>15/06/2015</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td><img class="tbl-thumb" src="assets/img/product/9.jpg"
                                                             alt="Product Image"></td>
                                                    <td>Drill machine br6</td>
                                                    <td>$548</td>
                                                    <td>30% OFF</td>
                                                    <td>250</td>
                                                    <td>84</td>
                                                    <td><span class="active">active</span></td>
                                                    <td>16/11/2023</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button type="button"
                                                                    class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i
                                                                        class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="#">Edit</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
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