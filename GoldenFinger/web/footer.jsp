<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>-->
         <!-- Footer Start -->
        <footer class="gi-footer bg-[#fff] border-t-[1px] border-solid border-[#eee] mt-[40px]">
            <div class="footer-container">
                <div class="footer-top pt-[80px] pb-0 max-[767px]:pt-[60px] max-[767px]:pb-0">
                    <div class="flex flex-wrap justify-between items-center mx-auto min-[1600px]:max-w-[1600px] min-[1400px]:max-w-[1320px] min-[1200px]:max-w-[1140px] min-[992px]:max-w-[960px] min-[768px]:max-w-[720px] min-[576px]:max-w-[540px]">
                        <div class="w-full flex flex-wrap">
                            <div class="min-[992px]:w-[25%] px-[12px] w-full gi-footer-cat wow fadeInUp">
                                <div class="gi-footer-widget gi-footer-company flex flex-col">
                                    <img src="assets/img/logo/logo.png" class="gi-footer-logo max-w-[144px] max-[767px]:max-w-[130px] " alt="footer logo">
                                    <p class="gi-footer-detail max-w-[400px] mb-[30px] p-[0] text-[14px] leading-[27px] font-normal text-[#777] inline-block relative max-[1199px]:text-[14px]">Golden Finger - The ultimate destination for piano lovers! We offer premium pianos with exceptional sound, elegant designs, and competitive prices.
                                        Enjoy a seamless online shopping experience with doorstep delivery, bringing music closer to you!</p>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-info wow fadeInUp" data-wow-delay="0.2s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Category</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <c:forEach items="${requestScope.categoryList}" var="c" >
                                                <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <a href="shop?cid=${c.id}" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">${c.name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-account wow fadeInUp" data-wow-delay="0.3s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Company</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="about-us.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">About us</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="track-order.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Delivery</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="privacy-policy.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Legal Notice</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="terms-condition.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Terms & conditions</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="checkout.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Secure payment</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center">
                                                <a href="contact-us.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Contact us</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[16.66%] gi-footer-toggle px-[12px] w-full gi-footer-service wow fadeInUp" data-wow-delay="0.4s">
                                <div class="gi-footer-widget">
                                    <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Account</h4>
                                    <div class="gi-footer-links gi-footer-dropdown">
                                        <ul class="align-itegi-center">
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="register.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Sign In</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="cart.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">View Cart</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="privacy-policy.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Return Policy</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="#" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Become a Vendor</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                <a href="#" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Affiliate Program</a>
                                            </li>
                                            <li class="gi-footer-link m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center">
                                                <a href="checkout.html" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">Payments</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="min-[992px]:w-[25%] gi-footer-toggle px-[12px] w-full gi-footer-cont-social mb-[-20px] wow fadeInUp" data-wow-delay="0.5s">
                                <div class="gi-footer-contact mb-[30px] max-[991px]:mb-[0]">
                                    <div class="gi-footer-widget">
                                        <h4 class="gi-footer-heading text-[18px] font-medium mb-[20px] text-[#4b5966] leading-[1.2] tracking-[0] relative block w-full pb-[15px] capitalize font-Poppins border-b-[1px] border-solid border-[#eee] max-[991px]:mb-[20px] max-[991px]:text-[14px]">Contact</h4>
                                        <div class="gi-footer-links gi-footer-dropdown">
                                            <ul class="align-itegi-center">
                                                <li class="gi-footer-link gi-foo-location m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-rr-marker location leading-[0] text-[18px] mt-[5px] h-[25px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <p class="m-[0] text-[14px] font-normal text-[#777]">Khu cong nghe cao Hoa Lac - Km29, ĐCT08, Thach Hoa, Thach That, Ha Noi, Viet Nam</p>
                                                </li>
                                                <li class="gi-footer-link gi-foo-call m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-brands-whatsapp leading-[0] text-[18px] h-[20px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <a href="tel:+009876543210" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">0982226376</a>
                                                </li>
                                                <li class="gi-footer-link gi-foo-mail m-[0] leading-[1.5] border-[0] p-[0] font-normal text-[16px] text-[#5caf90] flex items-center mb-[16px]">
                                                    <span class="w-[25px] flex basis-auto grow-[0] shrink-[0]">
                                                        <i class="fi fi-rr-envelope leading-[0] text-[18px] h-[20px] text-[#5caf90] w-[auto]"></i>
                                                    </span>
                                                    <a href="mailto:example@email.com" class="transition-all duration-[0.3s] ease-in-out text-[14px] leading-[20px] p-[0] text-[#777] mb-[0] inline-block relative break-all tracking-[0] font-normal hover:text-[#5caf90] hover:opacity-[1]">nhudinhnhat2004@gmail.com</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-footer-social">
                                    <div class="gi-footer-widget">
                                        <div class="gi-footer-links gi-footer-dropdown">
                                            <ul class="align-itegi-center flex flex-wrap">
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-facebook text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-twitter text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.linkedin.com/in/kl3init/" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-linkedin text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                                <li class="gi-footer-link pr-[5px]">
                                                    <a href="https://www.facebook.com/nhat.nhu.35" class="h-[30px] w-[30px] bg-[#4b5966] rounded-[5px] capitalize flex items-center justify-center text-[15px]"><i class="gicon gi-instagram text-[16px] text-[#fff]" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Area End -->
<!--    </body>
</html>-->
