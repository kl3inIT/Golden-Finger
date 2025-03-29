<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>Add Product</title>

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
                            <h5>Add Product</h5>

                        </div>
                    </div>
                    <form action="addproduct" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="gi-card card-default">
                                    <div class="gi-card-content">
                                        <div class="row gi-product-uploads">
                                            <div class="col-lg-2 mb-991">
                                                <div class="gi-vendor-img-upload">
                                                    <div class="gi-vendor-main-img">
                                                        <div class="avatar-upload">
                                                            <div class="avatar-edit">
                                                                <input type='file' id="product_main" class="gi-image-upload"
                                                                       accept=".png, .jpg, .jpeg" name="file" required>
                                                                <label><i class="ri-pencil-line"></i></label>
                                                            </div>
                                                            <div class="avatar-preview gi-preview">
                                                                <div class="imagePreview gi-div-preview">
                                                                    <img class="gi-image-preview"
                                                                         src="dashboard/assets/img/product/preview.jpg" alt="edit">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="avatar-upload">
                                                            <div class="avatar-edit">
                                                                <input type='file' id="product_main" class="gi-image-upload"
                                                                       accept=".png, .jpg, .jpeg" name="file" required>
                                                                <label><i class="ri-pencil-line"></i></label>
                                                            </div>
                                                            <div class="avatar-preview gi-preview">
                                                                <div class="imagePreview gi-div-preview">
                                                                    <img class="gi-image-preview"
                                                                         src="dashboard/assets/img/product/preview.jpg" alt="edit">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="avatar-upload">
                                                            <div class="avatar-edit">
                                                                <input type='file' id="product_main" class="gi-image-upload"
                                                                       accept=".png, .jpg, .jpeg" name="file" required>
                                                                <label><i class="ri-pencil-line"></i></label>
                                                            </div>
                                                            <div class="avatar-preview gi-preview">
                                                                <div class="imagePreview gi-div-preview">
                                                                    <img class="gi-image-preview"
                                                                         src="dashboard/assets/img/product/preview.jpg" alt="edit">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-10">
                                                <div class="gi-vendor-upload-detail">
                                                    <div class="row g-3">
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Product name</label>
                                                            <input type="text" class="form-control slug-title" id="" name="name" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="form-label">Quantity</label>
                                                            <input type="number" class="form-control" id="quantity1" name="quantity" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="form-label">Select Categories</label>
                                                            <select class="form-control form-select" name="category">
                                                                <c:forEach items="${categories}" var="category">
                                                                    <option value="${category.getId()}" ${p.category.id eq category.id ? 'selected' : ''}>${category.getName()}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="form-label">Select Suppliers</label>
                                                            <select class="form-control form-select" name="supplier">
                                                                <c:forEach items="${suppliers}" var="supplier">
                                                                    <option value="${supplier.id}" ${p.supplier.id eq supplier.id ? 'selected' : ''}>${supplier.companyName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label class="form-label">Price <span>( In USD
                                                                    )</span></label>
                                                            <input type="number" class="form-control" id="price1" name="pirce" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="form-label">Discount</label>
                                                            <input type="number" min="0" max="1" step="0.01" class="form-control" id="quantity1" name="discount" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label class="form-label">Include</label>
                                                            <input type="text" class="form-control" id="quantity1" name="include" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Warranty</label>
                                                            <input type="text" class="form-control slug-title" name="warranty" id="" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Demension</label>
                                                            <input type="text" class="form-control slug-title" name="demension" id="" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Weight</label>
                                                            <input type="text" class="form-control slug-title" name="weight" id="" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Speaker</label>
                                                            <input type="text" class="form-control slug-title" name="speaker" id="" required>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="" class="form-label">Release Date</label>
                                                            <input type="date" class="form-control slug-title" name="date" id="" required>
                                                        </div>


                                                        <div class="col-md-12">
                                                            <label class="form-label">Ful Detail</label>
                                                            <textarea class="form-control" rows="4" name="detail" required></textarea>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
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
        </script>

    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/admin by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Mar 2025 05:34:21 GMT -->
</html>