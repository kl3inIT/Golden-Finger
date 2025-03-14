<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Order History</title>
        <meta name="keywords" content="tailwindcss, ecommerce, piano">
        <meta name="description" content="Piano Shop">
        <meta name="author" content="">

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
                                <h2 class="gi-breadcrumb-title text-[#4b5966] block text-[15px] font-Poppins leading-[22px] font-semibold my-[0] mx-auto capitalize max-[767px]:mb-[5px] max-[767px]:text-center">Checkout</h2>
                            </div>
                            <div class="min-[768px]:w-[50%] w-full px-[12px]">
                                <!-- gi-breadcrumb-list start -->
                                <ul class="gi-breadcrumb-list text-right max-[767px]:text-center">
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize"><a href="home" class="relative text-[#4b5966]">Home</a></li>
                                    <li class="gi-breadcrumb-item inline-block text-[14px] font-normal tracking-[0.02rem] leading-[1.2] capitalize active">Checkout</li>
                                </ul>
                                <!-- gi-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb end -->

        <!-- Checkout section -->
        <section class="gi-checkout-section py-[40px] text-[14px] max-[767px]:py-[30px]">
            <h2 class="hidden">Checkout Page</h2>
            <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px] relative">
                <div class="flex flex-wrap w-full">
                    <!-- Sidebar Area Start -->
                    <div class="gi-checkout-rightside px-[12px] min-[992px]:w-[33.33%] w-full">
                        <div class="gi-sidebar-wrap border-[1px] border-solid border-[#eee] mb-[30px] p-[15px] rounded-[5px]">
                            <!-- Sidebar Summary Block -->
                            <div class="gi-sidebar-block">
                                <div class="gi-sb-title">
                                    <h3 class="gi-sidebar-title text-[20px] max-[1199px]:text-[18px] font-semibold tracking-[0] mb-[0] relative text-[#4b5966] leading-[1.2]">Summary</h3>
                                </div>
                                <div class="gi-sb-block-content mt-[15px]">
                                    <div class="gi-checkout-summary">

                                        <div class="gi-checkout-summary-total border-t-[1px] border-solid border-[#eee] pt-[19px] mb-[0] mt-[16px] flex justify-between items-center">
                                            <span class="text-left text-[16px] font-semibold text-[#4b5966] tracking-[0] font-manrope">Total Amount</span>
                                            <span class="text-right text-[16px] font-semibold text-[#FF0000] font-manrope">
                                                $<fmt:formatNumber value="${requestScope.totalAmount}" maxFractionDigits="2" minFractionDigits="0" />
                                            </span>
                                        </div>
                                    </div>
                                    <div class="gi-checkout-pro">
                                        <c:forEach var="cart" items="${requestScope.cart}">


                                            <div class="w-full mb-[15px]">
                                                <div class="gi-product-inner transition-all duration-[0.3s] ease-in-out cursor-pointer flex flex-col overflow-hidden border-[1px] border-solid border-[#eee] rounded-[5px]">
                                                    <div class="gi-pro-image-outer transition-all duration-[0.3s] delay-[0s] ease z-[11] relative">
                                                        <div class="gi-pro-image overflow-hidden">
                                                            <a href="product-left-sidebar.html" class="image relative block overflow-hidden pointer-events-none">
                                                                <c:if test="${not empty cart.product.image[0]}">
                                                                    <img class="main-image max-w-full transition-all duration-[0.3s] ease delay-[0s]" src="${cart.product.image[0]}" alt="Product">
                                                                </c:if>
                                                                <c:if test="${not empty cart.product.image[1]}">
                                                                    <img class="hover-image absolute z-[1] top-[0] left-[0] opacity-[0] transition-all duration-[0.3s] ease delay-[0s]" src="${cart.product.image[1]}" alt="Product">
                                                                </c:if> 
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="gi-pro-content h-full p-[20px] relative z-[10] flex flex-col text-left border-t-[1px] border-solid border-[#eee]">
                                                        <h5 class="gi-pro-title h-full mb-[10px] text-[16px]">
                                                            <a href="product-left-sidebar.html" class="block text-[14px] leading-[22px] font-normal text-[#4b5966] tracking-[0.85px] capitalize font-Poppins hover:text-[#5caf90]">Dates Value Pack Pouch</a>
                                                        </h5>
                                                        <div class="gi-pro-rating mb-[10px] opacity-[0.7] relative">
                                                            <c:forEach var="i" begin="1" end="${cart.product.starRating}" step="1">
                                                                <i class="gicon gi-star fill inline-block text-[#f27d0c] float-left text-[14px] mr-[3px]"></i>
                                                            </c:forEach>
                                                            <c:forEach var="i" begin="${cart.product.starRating + 1}" end="5" step="1">
                                                                <i class="gicon gi-star inline-block text-[#777] float-left text-[14px] mr-[3px]"></i>
                                                            </c:forEach>
                                                        </div>
                                                        <span class="gi-price flex items-center">
                                                            <span class="old-price text-[14px] text-[#777] line-through">
                                                                $<fmt:formatNumber value="${cart.product.price}" maxFractionDigits="2" minFractionDigits="0" />
                                                            </span>
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] ml-[7px]">
                                                                $<fmt:formatNumber value="${cart.product.price - cart.product.price * cart.product.discount}" maxFractionDigits="2" minFractionDigits="0" />
                                                            </span>
                                                            <span class="new-price text-[#4b5966] font-bold text-[14px] ml-auto pr-[10px]">x${cart.quantity}</span>
                                                        </span>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>



                    </div>
                    <div class="gi-checkout-leftside px-[12px] min-[992px]:w-[66.66%] w-full max-[991px]:mt-[30px]">
                        <!-- checkout content Start -->
                        <div class="gi-checkout-content">
                            <div class="gi-checkout-inner">

                                <div class="gi-checkout-wrap pb-[3px] p-[30px] border-[1px] border-solid border-[#eee] bg-[#fff] rounded-[5px] mb-[40px]">
                                    <div class="gi-checkout-block gi-check-bill">
                                        <h3 class="gi-checkout-title mb-[26px] leading-[1.2] text-[20px] font-semibold tracking-[0] relative block text-[#4b5966] font-Montserrat max-[575px]:text-[18px]">Billing Details</h3>
                                        <div class="gi-bl-block-content">

                                            <div class="gi-check-bill-form mb-[2px]">
                                                <form action="payment" method="post" class="flex flex-row flex-wrap mx-[-15px]">
                                                    <span class="gi-bill-wrap gi-bill-half w-[50%] px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Full Name*</label>
                                                        <input value="${requestScope.user.fullName}" type="text" name="fullname" placeholder="Enter your full name" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]" required>
                                                    </span>
                                                    <span class="gi-bill-wrap gi-bill-half w-[50%] px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Phone*</label>
                                                        <input value="${requestScope.user.phone}" type="text" name="phone" placeholder="Enter your phone" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]" required>
                                                    </span>
                                                    <span class="gi-bill-wrap w-full px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Address*</label>
                                                        <input value="${requestScope.user.address}" type="text" name="address" placeholder="Enter your address" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]" required>
                                                    </span>
                                                    <span class="gi-bill-wrap w-full px-[15px]">
                                                        <label class="mb-[7px] text-[#4b5966] text-[15px] font-medium tracking-[0] leading-[1] inline-block">Comment</label>
                                                        <input type="text" name="comment" placeholder="Enter your comment" class="bg-transparent border-[1px] border-solid border-[#eee] text-[#4b5966] text-[14px] mb-[26px] px-[15px] w-full outline-[0] rounded-[5px] h-[50px]">
                                                    </span>
                                                    <input type="hidden" name="totalBill" value="${requestScope.totalAmount}">
                                                           <input type="hidden" name="paymentMethod" id="paymentMethod" value="COD">
                                                    <!-- Payment Method Section -->
                                                    <div class="w-full px-[15px] mb-[30px]">
                                                        <h4 class="text-[#4b5966] text-[16px] font-semibold mb-[15px]">Payment Method</h4>
                                                        <div class="flex flex-wrap gap-[15px]">
                                                            <!-- Cash on Delivery Option -->
                                                            <div id="cod-option" class="flex-1 min-w-[150px] border border-[#eee] hover:border-[#5caf90] rounded-[5px] p-[15px] cursor-pointer transition-all duration-[0.3s] flex flex-col items-center justify-center border-[#5caf90]" onclick="selectPaymentMethod('COD')">
                                                                <img src="assets/img/payment/cod.png" alt="Cash On Delivery" class="h-[40px] mb-[10px]">
                                                                <div class="font-medium text-[#4b5966] text-center">Cash On Delivery</div>
                                                                <div class="text-[12px] text-[#777] mt-[5px] text-center">Pay when you receive your order</div>
                                                            </div>

                                                            <!-- VNPay Option -->
                                                            <div id="vnpay-option" class="flex-1 min-w-[150px] border border-[#eee] hover:border-[#5caf90] rounded-[5px] p-[15px] cursor-pointer transition-all duration-[0.3s] flex flex-col items-center justify-center" onclick="selectPaymentMethod('VNPAY')">
                                                                <img src="assets/img/payment/vnpay.png" alt="VNPay" class="h-[40px] mb-[10px]">
                                                                <div class="font-medium text-[#4b5966] text-center">VNPay</div>
                                                                <div class="text-[12px] text-[#777] mt-[5px] text-center">Pay online with VNPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <span class="gi-check-order-btn block text-right p-[0] w-full">
                                                        <button type="submit" class="gi-btn-2 transition-all duration-[0.3s] ease-in-out py-[10px] px-[15px] text-[14px] font-medium bg-[#5caf90] text-[#fff] text-center rounded-[5px] hover:bg-[#4b5966] hover:text-[#fff]">
                                                            Place Order
                                                        </button>
                                                    </span>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--cart content End -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Checkout section End -->

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

        <!-- Payment Method Script -->
        <script>
                                                                // Initialize selected payment method
                                                                document.addEventListener('DOMContentLoaded', function () {
                                                                    // Set default payment method to COD
                                                                    selectPaymentMethod('COD');
                                                                });

                                                                /**
                                                                 * Select payment method and update UI
                                                                 */
                                                                function selectPaymentMethod(method) {
                                                                    // Update hidden input
                                                                    document.getElementById('paymentMethod').value = method;

                                                                    // Get payment option elements
                                                                    const codOption = document.getElementById('cod-option');
                                                                    const vnpayOption = document.getElementById('vnpay-option');

                                                                    // Reset styling
                                                                    resetPaymentOptionStyles(codOption, vnpayOption);

                                                                    // Apply active styling to selected option
                                                                    applyActiveStyle(method, codOption, vnpayOption);
                                                                }

                                                                /**
                                                                 * Reset styling for payment options
                                                                 */
                                                                function resetPaymentOptionStyles(codOption, vnpayOption) {
                                                                    // Remove active styling from both options
                                                                    codOption.classList.remove('bg-[rgba(92,175,144,0.1)]', 'border-[#5caf90]');
                                                                    vnpayOption.classList.remove('bg-[rgba(92,175,144,0.1)]', 'border-[#5caf90]');
                                                                }

                                                                /**
                                                                 * Apply active styling to selected payment option
                                                                 */
                                                                function applyActiveStyle(method, codOption, vnpayOption) {
                                                                    if (method === 'COD') {
                                                                        codOption.classList.add('bg-[rgba(92,175,144,0.1)]', 'border-[#5caf90]');
                                                                    } else {
                                                                        vnpayOption.classList.add('bg-[rgba(92,175,144,0.1)]', 'border-[#5caf90]');
                                                                    }
                                                                }

                                                                /**
                                                                 * Validate form before submission
                                                                 */
                                                                function validateAndSubmitForm() {
                                                                    const form = document.querySelector('form[action="payment"]');

                                                                    // Check required fields
                                                                    const requiredFields = form.querySelectorAll('[required]');
                                                                    let isValid = true;

                                                                    requiredFields.forEach(field => {
                                                                        if (!field.value.trim()) {
                                                                            isValid = false;
                                                                            field.classList.add('border-red-500');
                                                                        } else {
                                                                            field.classList.remove('border-red-500');
                                                                        }
                                                                    });

                                                                    if (!isValid) {
                                                                        alert('Please fill in all required fields');
                                                                        return false;
                                                                    }

                                                                    return true;
                                                                }

                                                                // Fix: Remove the event listener for placeOrderBtn since it doesn't exist
                                                                // Instead, add onsubmit to the form
                                                                document.querySelector('form[action="payment"]').onsubmit = function (e) {
                                                                    return validateAndSubmitForm();
                                                                };
        </script>

    </body>

</html>
