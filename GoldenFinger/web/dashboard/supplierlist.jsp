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

        <title>Supplier List</title>

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
                                            <li><a href="home">Home</a></li>
                                            <li><a href="shop">Shop</a></li>                                                                            
                                        </ul>
                                        <ul class="border-top">
                                            <li><a href="logout"><i class="ri-logout-circle-r-line"></i>Logout</a></li>
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
                            <h5>Supplier List</h5>
                            <ul>
                                <li><a href="admin">Dashboard</a></li>
                                <li>Supplier List</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card" id="suppliertbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Suppliers</h4>
                                    <div class="header-tools">
                                        <button class="gi-btn default-btn color-success" data-bs-toggle="modal" data-bs-target="#addSupplierModal">
                                            <i class="ri-add-line"></i> Add Supplier
                                        </button>
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card"><i
                                                class="ri-fullscreen-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="supplier-table">
                                        <div class="table-responsive tbl-1200">
                                            <table id="supplier_table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Image</th>
                                                        <th>Company Name</th>
                                                        <th>Contact Person</th>
                                                        <th>Country</th>
                                                        <th>Phone</th>
                                                        <th>Website</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:choose>
                                                        <c:when test="${not empty suppliers}">
                                                            <c:forEach items="${suppliers}" var="supplier">
                                                                <tr>
                                                                    <td>${supplier.id}</td>
                                                                    <td>
                                                                        <img class="cat-thumb" src="${supplier.image}" alt="Supplier Image" 
                                                                             onerror="this.src='dashboard/assets/img/supplier/default.png'">
                                                                    </td>
                                                                    <td>${supplier.companyName}</td>
                                                                    <td>${supplier.contactName}</td>
                                                                    <td>${supplier.country}</td>
                                                                    <td>${supplier.phone}</td>
                                                                    <td>
                                                                        <a href="${supplier.homePage}" target="_blank" class="text-primary">
                                                                            ${supplier.homePage}
                                                                        </a>
                                                                    </td>
                                                                    <td>
                                                                        <button class="gi-btn default-btn color-info" 
                                                                                data-bs-toggle="modal" 
                                                                                data-bs-target="#editSupplierModal" 
                                                                                onclick="editSupplier(${supplier.id}, '${supplier.companyName}', 
                                                                                    '${supplier.contactName}', '${supplier.country}', 
                                                                                    '${supplier.phone}', '${supplier.homePage}', 
                                                                                    '${supplier.image}')">
                                                                            <i class="ri-edit-line"></i>
                                                                        </button>
                                                                        <button class="gi-btn default-btn color-danger" 
                                                                                onclick="deleteSupplier(${supplier.id})">
                                                                            <i class="ri-delete-bin-line"></i>
                                                                        </button>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <tr>
                                                                <td colspan="8" class="text-center">No suppliers found</td>
                                                            </tr>
                                                        </c:otherwise>
                                                    </c:choose>
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

        <!-- Add Supplier Modal -->
        <div class="modal fade" id="addSupplierModal" tabindex="-1" aria-labelledby="addSupplierModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addSupplierModalLabel">Add New Supplier</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="supplierlist" method="post">
                        <div class="modal-body">
                            <input type="hidden" name="action" value="add">
                            <div class="mb-3">
                                <label for="supplierName" class="form-label">Company Name</label>
                                <input type="text" class="form-control" id="supplierName" name="supplierName" required>
                            </div>
                            <div class="mb-3">
                                <label for="contactName" class="form-label">Contact Person</label>
                                <input type="text" class="form-control" id="contactName" name="contactName" required>
                            </div>
                            <div class="mb-3">
                                <label for="country" class="form-label">Country</label>
                                <input type="text" class="form-control" id="country" name="country" required>
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="homePage" class="form-label">Website</label>
                                <input type="url" class="form-control" id="homePage" name="homePage" placeholder="http://www.example.com">
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Image URL</label>
                                <input type="text" class="form-control" id="image" name="image" placeholder="URL to company logo">
                                <small class="text-muted">Leave empty to use default image</small>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Edit Supplier Modal -->
        <div class="modal fade" id="editSupplierModal" tabindex="-1" aria-labelledby="editSupplierModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editSupplierModalLabel">Edit Supplier</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="supplierlist" method="post">
                        <div class="modal-body">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" id="editSupplierId" name="supplierId">
                            <div class="mb-3">
                                <label for="editSupplierName" class="form-label">Company Name</label>
                                <input type="text" class="form-control" id="editSupplierName" name="supplierName" required>
                            </div>
                            <div class="mb-3">
                                <label for="editContactName" class="form-label">Contact Person</label>
                                <input type="text" class="form-control" id="editContactName" name="contactName" required>
                            </div>
                            <div class="mb-3">
                                <label for="editCountry" class="form-label">Country</label>
                                <input type="text" class="form-control" id="editCountry" name="country" required>
                            </div>
                            <div class="mb-3">
                                <label for="editPhone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="editPhone" name="phone" required>
                            </div>
                            <div class="mb-3">
                                <label for="editHomePage" class="form-label">Website/Email</label>
                                <input type="text" class="form-control" id="editHomePage" name="homePage">
                            </div>
                            <div class="mb-3">
                                <label for="editImage" class="form-label">Image URL</label>
                                <input type="text" class="form-control" id="editImage" name="image">
                                <small class="text-muted">Leave empty to use default image</small>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

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

        <!-- Main Custom -->
        <script src="dashboard/assets/js/main.js"></script>

        <script>
            $(document).ready(function () {
                $('#supplier_table').DataTable({
                    "order": [[0, "desc"]]
                });
            });

            function editSupplier(id, companyName, contactName, country, phone, homePage, image) {
                $('#editSupplierId').val(id);
                $('#editSupplierName').val(companyName);
                $('#editContactName').val(contactName);
                $('#editCountry').val(country);
                $('#editPhone').val(phone);
                $('#editHomePage').val(homePage);
                $('#editImage').val(image);
            }

            function deleteSupplier(id) {
                if (confirm('Are you sure you want to delete this supplier?')) {
                    $.ajax({
                        type: "POST",
                        url: "supplierlist",
                        data: {
                            action: "delete",
                            supplierId: id
                        },
                        success: function (response) {
                            if (response.trim() === "") {
                                window.location.reload();
                            } else {
                                alert(response);
                            }
                        },
                        error: function (xhr, status, error) {
                            alert("Error deleting supplier: " + error);
                        }
                    });
                }
            }
        </script>
    </body>
</html>