
$(document).ready(function () {
    "use strict";

    /*--------------------- Main Slider ---------------------- */
    var GiMainSlider = new Swiper('.gi-slider.swiper-container', {
        loop: true,
        centeredSlides: true,
        speed: 2000,
        effect: 'slide',
        parallax: true,
        autoplay: false,
        autoplay: {
            delay: 10000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });

    /*--------------------- Language and Currency Click to Active ---------------------- */
    $(document).ready(function () {
        $(".header-top-lan li").on("click", function () {
            $(this).addClass('active').siblings().removeClass('active');
        });
        $(".header-top-curr li").on("click", function () {
            $(this).addClass('active').siblings().removeClass('active');
        });
    });

    /*--------------------- Day of the deal Slider (offer section) ---------------------- */
    $('.deal-slick-carousel').slick({
        dots: false,
        infinite: true,
        arrows: false,
        speed: 300,
        slidesToShow: 5,
        slidesToScroll: 5,
        adaptiveHeight: true,
        responsive: [
            {
                breakpoint: 1367,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 5,
                }
            },
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                }
            },
            {
                breakpoint: 0,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                }
            }
        ]
    });

    /*--------------------- tabs-products-Tailwindcss ---------------------------------*/
    $("#myproTabTwo li:nth-child(2)").addClass("active");
    $(".tab-pro-pane").hide();
    $(".tab-pro-pane:nth-child(2)").show();
    $("#myproTabTwo li").on("click", function () {
        $("#myproTabTwo li").removeClass("active");
        $(this).addClass("active");
        $(".tab-pro-pane").hide();
        var activeTab = $(this).find("a").attr("href");
        $(activeTab).fadeIn();
        return false;
    });

    /*--------------------- Trending, Top Rated Start Slider ----------------------- */
    $('.gi-trending-slider, .gi-rated-slider').slick({
        dots: false,
        arrows: true,
        infinite: true,
        autoplay: false,
        speed: 500,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 578,
                settings: {
                    slidesToScroll: 1,
                    slidesToShow: 1,
                }
            }
        ]
    });

    /*--------------------- Blog slider (Home Page) ---------------------- */
    $('.gi-blog-carousel').owlCarousel({
        margin: 24,
        loop: true,
        dots: false,
        nav: false,
        smartSpeed: 1000,
        autoplay: false,
        items: 3,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            481: {
                items: 2
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            },
            1200: {
                items: 4
            },
            1400: {
                items: 5
            }
        }
    });

    /*--------------------- Newsletter popup Homepage ---------------------- */
    setTimeout(function () {
        $("#gi-popnews-bg").fadeIn();
        $("#gi-popnews-box").fadeIn();
    }, 5000);
    $("#gi-popnews-close").on("click", () => {
        $("#gi-popnews-bg").fadeOut();
        $("#gi-popnews-box").fadeOut();
    });

    $("#gi-popnews-bg").on("click", () => {
        $("#gi-popnews-bg").fadeOut();
        $("#gi-popnews-box").fadeOut();
    });
});