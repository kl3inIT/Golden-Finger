(function ($) {
    "use strict";

    /*----------------------------- Site Loader & Popup --------------------*/
    $(window).on("load", function () {
        $("#gi-overlay").fadeOut("slow");
    });

    $(document).ready(function () {

        $("body").attr("data-gi-mode", "light");

        /*========== Tooltips ===========*/
        $('[title]').attr('data-bs-toggle', 'tooltip');
        $('[title]').tooltip();

        /*========== Sidebar ===========*/
        // mobileAndTabletCheck       
        window.mobileAndTabletCheck = function () {
            let check = false;
            (function (a) {
                if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4)))
                    check = true;
            })(navigator.userAgent || navigator.vendor || window.opera);
            return check;
        };

        function winSizeWidth() {
            var width = $(window).width();
            width = isMobTab ? isMobTab : width + 17;
            return width;
        }

        var currentActiveTab = localStorage.getItem('currentActiveTab') ?? null;
        var currentActiveSubTab = localStorage.getItem('currentActiveSubTab') ?? null;
        var currentSubLink = localStorage.getItem('currentSubLink') ?? null;

        var isMobTab = mobileAndTabletCheck();
        var screenSize = winSizeWidth();

        var sSize = {
            min: 575,
            max: 991,
        }

        function hideShowSidebar(el, activeEl, className, type) {
            if (sSize.max > screenSize) {
                if (sSize.min >= screenSize) {
                    $(el).show();
                    $(activeEl).addClass(className);
                } else {
                    if ($(".wrapper").hasClass("sb-default")) {
                        if (type == "click") {
                            $(el).show();
                            $(activeEl).addClass(className);
                        } else {
                            $(el).hide();
                            $(activeEl).removeClass(className);
                        }
                    }

                    if ($(".wrapper").hasClass("sb-collapse")) {
                        if (type == "resize" || type == "click") {
                            $(el).hide();
                            $(activeEl).removeClass(className);
                        } else {
                            $(el).show();
                            $(activeEl).addClass(className);
                        }
                    }

                }

            } else {
                if ($(".wrapper").hasClass("sb-default")) {
                    $(el).show();
                    $(activeEl).addClass(className);
                }

                if ($(".wrapper").hasClass("sb-collapse")) {
                    if (type == "mouseenter") {
                        $(el).show();
                        $(activeEl).addClass(className);
                    } else {
                        $(el).hide();
                        $(activeEl).removeClass(className);
                    }

                }
            }
        }

        function sidebarActiveTabs(type = '') {
            screenSize = winSizeWidth();
            $(".gi-sb-drop").hide();
            $(".gi-sb-subdrop.condense").hide();

            if (currentActiveTab != '') {
                var currentActiveEle = $(`span.condense:contains('${currentActiveTab}')`).filter(function () {
                    return $(this).text() === currentActiveTab;
                });
                // $(currentActiveEle).show();
                var activeEl = $(currentActiveEle).parents('.gi-sb-item');
                var dropEl = $(currentActiveEle).parents('.gi-sb-item').find('.gi-sb-drop');
                hideShowSidebar(dropEl, activeEl, 'load-active', type);
            }

            if (currentActiveSubTab != '') {
                var currentSubTabActiveEle = $(`span.condense:contains('${currentActiveSubTab}')`).filter(function () {
                    return $(this).text() === currentActiveSubTab;
                });
                $(currentSubTabActiveEle).parents('.sb-subdrop-item').find('.gi-sb-subdrop.condense').show();
                var activeEl = $(currentSubTabActiveEle).parents('.sb-subdrop-item');
                var dropEl = $(currentSubTabActiveEle).parents('.sb-subdrop-item').find('.gi-sb-subdrop');
                hideShowSidebar(dropEl, activeEl, 'load-sub-active', type);
            }

            if (currentSubLink != '') {
                var currentSubActiveEle = $(`a.gi-page-link:contains('${currentSubLink}')`).filter(function () {
                    return $(this).text() === currentSubLink;
                });
                $(currentSubActiveEle).addClass('active-link');
                var activeEl = $(currentSubActiveEle).parents('.gi-sb-item');
                var dropEl = $(currentSubActiveEle).parents('.gi-sb-drop');
                hideShowSidebar(dropEl, activeEl, 'load-active', type);
        }
        }

        var newURL = window.location.pathname;
        var newURL = newURL.replace('https://maraviyainfotech.com/', '');
        $(".gi-sb-drop").hide();

        if (sSize.max > screenSize) {
            if (sSize.min >= screenSize) {

                $(".condense:not(.gi-sb-drop)").hide();
            } else {
                $(".wrapper").toggleClass("sb-collapse sb-default");

                $(".condense:not(.gi-sb-drop)").hide();
            }
        }
        if ($(".wrapper").hasClass("sb-default")) {
            $('.gi-sb-drop').hide();
            $("a.gi-page-link").filter(`[href='${newURL}']`).parent().parent().show();
            $("a.gi-page-link").filter(`[href='${newURL}']`).parent().parent().parent().addClass('load-active');
            $("a.gi-page-link").filter(`[href='${newURL}']`).addClass('active-link');


            var currentActiveLnk = $("a.gi-page-link").filter(`[href='${newURL}']`);

            if (currentActiveLnk.length > 0) {
                setfxPagelink($(currentActiveLnk));
            }

            var lastURL = localStorage.getItem('URL');

            sidebarActiveTabs();

            localStorage.setItem('URL', newURL);
        }

        $(".gi-drop-toggle").on("click", function (e) {
            var senderElement = e.target;

            if ($(senderElement).hasClass('gi-sub-drop-toggle'))
                return;
            if ($(senderElement).hasClass('gi-page-link'))
                return;
            if ($(senderElement).hasClass('condense') && $(senderElement).parents('.gi-sub-drop-toggle').length > 0)
                return;

            var parent = $(this).parents('.sb-drop-item');
            currentActiveTab = $(parent).find('.gi-drop-toggle span.condense').text();

            if ($(parent).hasClass('load-active')) {
                $(parent).find(".gi-sb-drop").slideUp();
                $(parent).removeClass('load-active');
                currentSubLink = currentActiveSubTab = currentActiveTab = '';
                localStorage.setItem('currentActiveTab', '');
                localStorage.setItem('currentActiveSubTab', '');
                localStorage.setItem('currentSubLink', '');
            } else {
                $('.load-active').removeClass('load-active');
                $(".gi-sb-drop").hide();
                $(parent).addClass('load-active');
                $(parent).find(".gi-sb-drop").slideDown();
                localStorage.setItem('currentActiveTab', currentActiveTab);
                currentSubLink = '';
                localStorage.setItem('currentSubLink', '');
            }
        });

        $(".gi-sub-drop-toggle").on("click", function (e) {
            var senderElement = e.target;

            var parent = $(this).parents('.sb-subdrop-item');
            currentActiveSubTab = $(parent).find('.gi-sub-drop-toggle span.condense').text();

            if ($(parent).hasClass('load-sub-active')) {
                $(parent).find(".gi-sb-subdrop").slideUp();
                $(parent).removeClass('load-sub-active');
                currentActiveSubTab = currentSubLink = '';
                localStorage.setItem('currentActiveSubTab', '');
                localStorage.setItem('currentSubLink', '');
            } else {
                $('.load-sub-active').removeClass('load-sub-active');
                $(".gi-sb-subdrop").hide();
                $(parent).addClass('load-sub-active');
                $(parent).find(".gi-sb-subdrop").slideDown();
                localStorage.setItem('currentActiveSubTab', currentActiveSubTab);
            }
        });

        function setfxPagelink(_this) {
            $('.active-link').removeClass('active-link');

            currentSubLink = $(_this).text();

            if (currentSubLink != '') {
                localStorage.setItem('currentSubLink', currentSubLink);
            }

            $(_this).addClass('active-link');

            // sb-drop-item
            const mainParentHas = $(_this).parents('.sb-drop-item');

            if (mainParentHas) {
                // $(subParentHas).
                currentActiveTab = $(mainParentHas).find('.gi-drop-toggle span.condense').text();

                localStorage.setItem('currentActiveTab', currentActiveTab);
            }

            // Sub Parent Item
            const subParentHas = $(_this).parents('.sb-subdrop-item');
            if (subParentHas) {
                // $(subParentHas).
                currentActiveSubTab = $(subParentHas).find('.gi-sub-drop-toggle span.condense').text();

                localStorage.setItem('currentActiveSubTab', currentActiveSubTab);
            }
        }

        $(".gi-page-link").on("click", function (e) {
            setfxPagelink($(this));
        });

        $(window).resize(function (e) {
            screenSize = winSizeWidth();
            if (sSize.max >= screenSize) {
                // console.log('Under sSize.max');
                if ($(".wrapper").hasClass("sb-default")) {
                    // console.log('Outer sSize.max >>>>>> set sb-default');
                    $(".gi-sidebar-overlay").fadeOut();


                    $(".wrapper").removeClass("sb-default").addClass('sb-collapse');

                    $(".condense:not(.gi-sb-drop)").hide();
                    sidebarActiveTabs(e.type);
                }
            }
            if (sSize.max < screenSize || sSize.min >= screenSize) {
                // console.log('Outer sSize.max or under sSize.min');

                if ($(".wrapper").hasClass("sb-collapse")) {
                    // console.log('Outer sSize.max >>>>>> set sb-collapse');
                    $(".gi-sidebar-overlay").fadeOut();

                    $(".wrapper").removeClass('sb-collapse').addClass("sb-default");
                    $(".condense:not(.gi-sb-drop)").show();
                    sidebarActiveTabs(e.type);
                }
            }


        });

        $(".gi-sidebar-overlay").on('click', function (e) {
            $(".gi-sidebar-overlay").fadeOut();

            $(".wrapper").toggleClass("sb-collapse sb-default");

            $(".condense:not(.gi-sb-drop)").hide();

            sidebarActiveTabs(e.type);
        });

        // On click Toggle sidebar collapse
        $(".gi-toggle-sidebar").on("click", function (e) {
            screenSize = winSizeWidth();
            if (sSize.max > screenSize) {
                $(".gi-sidebar-overlay").fadeIn();
                // $(".wrapper").removeClass('sb-collapse').addClass('sb-default')
            }
            $(".wrapper").toggleClass("sb-collapse sb-default");
            $(this).toggleClass("active");
            // debugger;;
            if ($(".wrapper").hasClass("sb-default")) {
                $(".condense").show();
                $(".gi-sb-drop").hide();

                sidebarActiveTabs(e.type);

            } else {
                if (sSize.max < screenSize) {
                    $(".condense:not(.gi-sb-drop)").hide();
                } else {
                    $(".condense:not(.gi-sb-drop)").show();
                    $(".condense.gi-sb-drop").hide();
                }
                sidebarActiveTabs(e.type);
            }

        });
        $('.gi-sidebar, .sb-collapse').on("mouseenter", function (e) {
            screenSize = winSizeWidth();
            if (sSize.max < screenSize) {
                if (!$(".wrapper").hasClass("sb-default")) {
                    $(".condense:not(.gi-sb-drop)").show();
                }
                sidebarActiveTabs(e.type);
            }
        });

        $('.gi-sidebar').on("mouseleave", function (e) {
            screenSize = winSizeWidth();
            if (sSize.max < screenSize) {
                if (!$(".wrapper").hasClass("sb-default")) {
                    $(".condense:not(.gi-sb-drop)").hide();

                }
                sidebarActiveTabs(e.type);
            }
        });

        /*========== Header tools ===========*/
        $(".gi-screen.full").on("click", function () {
            $(this).css("display", "none");
            $(".gi-screen.reset").css("display", "flex");

            // current working methods
            if (document.documentElement.requestFullscreen) {
                document.documentElement.requestFullscreen();
            } else if (document.documentElement.msRequestFullscreen) {
                document.documentElement.msRequestFullscreen();
            } else if (document.documentElement.mozRequestFullScreen) {
                document.documentElement.mozRequestFullScreen();
            } else if (document.documentElement.webkitRequestFullscreen) {
                document.documentElement.webkitRequestFullscreen(
                        Element.ALLOW_KEYBOARD_INPUT
                        );
            }
        });
        $(".gi-screen.reset").on("click", function () {
            $(this).css("display", "none");
            $(".gi-screen.full").css("display", "flex");
            if (document.exitFullscreen) {
                document.exitFullscreen();
            } else if (document.msExitFullscreen) {
                document.msExitFullscreen();
            } else if (document.mozCancelFullScreen) {
                document.mozCancelFullScreen();
            } else if (document.webkitExitFullscreen) {
                document.webkitExitFullscreen();
            }
        });
        var $addLink = $('<link>', {
            rel: 'stylesheet',
            href: 'assets/css/dark.css',
            id: 'dark'
        });

        $(".gi-mode.dark").on("click", function () {
            $(this).css("display", "none");
            $(".gi-mode.light").css("display", "flex");

            $("body").attr("data-gi-mode", "dark");
            $("link[href='assets/css/style.css']").after($addLink);
            var headerModes = $(".gi-tools-item.header").attr("data-header-mode");
            if (headerModes == "light") {
                $(".gi-tools-item.header[data-header-mode='dark']").addClass("active");
                $(".gi-tools-item.header[data-header-mode='light']").removeClass("active");
                $(".gi-header").attr("data-header-mode-tool", "dark");
            }
            $(".gi-tools-item.mode[data-gi-mode-tool='light']").removeClass("active");
            $(".gi-tools-item.mode[data-gi-mode-tool='dark']").addClass("active");
        });
        $(".gi-mode.light").on("click", function () {
            $(this).css("display", "none");
            $(".gi-mode.dark").css("display", "flex");
            $(".gi-header").attr("data-header-mode-tool", "light");

            $("body").attr("data-gi-mode", "light");
            $("#dark").remove();
            var headerModes = $(".gi-tools-item.header").attr("data-header-mode");
            if (headerModes == "light") {
                $(".gi-tools-item.header[data-header-mode='light']").addClass("active");
                $(".gi-tools-item.header[data-header-mode='dark']").removeClass("active");
                $(".gi-header").attr("data-header-mode-tool", "light");
            }
            $(".gi-tools-item.mode[data-gi-mode-tool='dark']").removeClass("active");
            $(".gi-tools-item.mode[data-gi-mode-tool='light']").addClass("active");
        });

        $(".gi-notify").on("click", function () {
            $(".gi-notify-bar").addClass("gi-notify-bar-open");
            $(".gi-notify-bar-overlay").fadeIn();
        });
        $(".gi-notify-bar-overlay, .close-notify").on("click", function () {
            $(".gi-notify-bar").removeClass("gi-notify-bar-open");
            $(".gi-notify-bar-overlay").fadeOut();
        });

        $(".open-search").on("click", function () {
            $(".gi-search").fadeIn();
        });

        /*========== Vector map ===========*/
        /* Basic styling for the map */
        var regionStyling = {initial: {fill: 'rgba(72, 85, 104, 0.2)'}, hover: {fill: '#ccc'}, selected: {fill: 'rgba(72, 85, 104, 0.1)'}};
        /* Data that is passed to the map */
        var gbData = {
            "IN": 6.0,
            "BR": 5.0,
            "CA": 4.0,
            "MA": 3.0,
            "TZ": 2.0,
            "AU": 1.0,
        };
        var wrld = {
            map: 'world_mill_en',
            normalizeFunction: 'polynomial',
            regionStyle: regionStyling,
            backgroundColor: '#fff',
            markers: [
                {
                    latLng: [23.7041, 77.96],
                    name: "India",
                }, {
                    latLng: [31.7917, -7.41],
                    name: 'Morocco'
                }, {
                    latLng: [-14.2350, -51.9253],
                    name: "Brazil",
                }, {
                    latLng: [-25.2744, 133.7751],
                    name: "Australia "
                }, {
                    latLng: [56.1304, -106.3468],
                    name: "Canada"
                }, {
                    latLng: [-6.3690, 34.8888],
                    name: 'Tanzania'
                },
            ],
            markerStyle: {
                initial: {
                    r: 1,
                    fill: "transparent",
                    "fill-opacity": .3,
                    stroke: "transparent",
                    "stroke-width": 0,
                    "stroke-opacity": .6
                },
                hover: {
                    stroke: "transparent",
                    "fill-opacity": .6,
                    "stroke-width": 0
                }
            },
            series: {
                regions: [{
                        values: gbData,
                        attribute: 'fill',
                        scale: ['#d5d8ff', '#858eff']
                    }
                ]
            },
            onRegionTipShow: function (e, el, code) {
                el.html('In ' + el.html() + ', GB proposes ' + gbData[code] + ' products : <ul>' + getProducts(gbData[code]) + '</ul>  Click to know more');
                $(".lbl-hover").html('Hovered country value: ' + gbData[code]);
            }
        };

        /* Setting up of the map */
        if ($('#world-map').length > 0) {
            $('#world-map').vectorMap(wrld);
        }

        /*========== Event calendar ===========*/
        /* https://github.com/brospars/simple-calendar */
        var $calendar;
        let eventCalendar = $("#eventCalendar").simpleCalendar({
            fixedStartDay: 0, // begin weeks by sunday
            disableEmptyDetails: true,
            events: [
                // generate new event after tomorrow for one hour
                {
                    startDate: new Date(new Date().setHours(new Date().getHours() + 24)).toDateString(),
                    endDate: new Date(new Date().setHours(new Date().getHours() + 25)).toISOString(),
                    summary: 'Visit Google Headquarters'
                },
                // generate new event for yesterday at noon
                {
                    startDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 12, 0)).toISOString(),
                    endDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 11)).getTime(),
                    summary: 'John doe Birthday '
                },
                // generate new event for the last two days
                {
                    startDate: new Date(new Date().setHours(new Date().getHours() - 48)).toISOString(),
                    endDate: new Date(new Date().setHours(new Date().getHours() - 24)).getTime(),
                    summary: 'Deal with mr.morgus dronald'
                },
                {
                    startDate: new Date(new Date().setHours(new Date().getHours() - 72)).toISOString(),
                    endDate: new Date(new Date().setHours(new Date().getHours() - 24)).getTime(),
                    summary: 'Visit lorence infra llp.'
                }
            ],

        });
        $calendar = eventCalendar.data('plugin_simpleCalendar')

        /*========== Search Remix icon page ===========*/
        $('[data-search-icon]').on('keyup', function () {
            var searchVal = $(this).val().toLowerCase();
            // console.log(searchVal);
            var filterItems = $('[data-search-item]');
            var filterItemsText = $('[data-search-item]').text().toLowerCase();
            var a = $('[data-search-item]:contains(' + searchVal + ')');
            // console.log(a);
            if (searchVal != '') {
                filterItems.closest(".remix-unicode-icon").addClass('hide');
                $('[data-search-item]:contains(' + searchVal + ')').closest(".remix-unicode-icon").removeClass('hide');
            } else {
                filterItems.closest(".remix-unicode-icon").removeClass('hide');
            }
        });

        /*========== Search Material icon page ===========*/
        $('[data-search-material]').on('keyup', function () {
            var searchVal = $(this).val().toLowerCase();
            // console.log(searchVal);
            var filterItems = $('.material-search-item');
            var filterItemsText = $('.material-search-item').text().toLowerCase();
            var a = $('.material-search-item:contains(' + searchVal + ')');
            // console.log(a);
            if (searchVal != '') {
                filterItems.closest(".material-icon-item").addClass('hide');
                $('.material-search-item:contains(' + searchVal + ')').closest(".material-icon-item").removeClass('hide');
            } else {
                filterItems.closest(".material-icon-item").removeClass('hide');
            }
        });
    });

    /*========== BASIC DATA TABLE ===========*/
    var basicDataTable = $("#basic-data-table");
    if (basicDataTable.length !== 0) {
        basicDataTable.DataTable({
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== RESPONSIVE DATA TABLE ===========*/
    var responsiveDataTable = $("#lead-data-table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[5, 20, 30, 50, 75, -1], [5, 20, 30, 50, 75, "All"]],
            "pageLength": 5,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }

    /*========== Recent order DATA TABLE(ecommerce.html) ===========*/
    var responsiveDataTable = $("#recent_order_data_table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[5, 20, 30, 50, 75, -1], [5, 20, 30, 50, 75, "All"]],
            "pageLength": 5,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== Recent order DATA TABLE(order-list.html) ===========*/
    var responsiveDataTable = $("#recent_order");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[10, 20, 30, 50, 75, -1], [10, 20, 30, 50, 75, "All"]],
            "pageLength": 10,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== Recent order DATA TABLE(add-category.html.html) ===========*/
    var responsiveDataTable = $("#cat_data_table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[10, 20, 30, 50, 75, -1], [10, 20, 30, 50, 75, "All"]],
            "pageLength": 10,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== Top product DATA TABLE ===========*/
    var responsiveDataTable = $("#top_product_data_table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[5, 20, 30, 50, 75, -1], [5, 20, 30, 50, 75, "All"]],
            "pageLength": 5,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== Best seller DATA TABLE ===========*/
    var responsiveDataTable = $("#best_seller_data_table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[5, 20, 30, 50, 75, -1], [5, 20, 30, 50, 75, "All"]],
            "pageLength": 5,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }
    /*========== Todo DATA TABLE ===========*/
    var responsiveDataTable = $("#todo-data-table");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[8, 20, 30, -1], [8, 20, 30, "All"]],
            "pageLength": 8,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }

    /*======== Vendor list DATA TABLE ========*/
    var responsiveDataTable = $("#vendor-list");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[10, 20, 30, -1], [10, 20, 30, "All"]],
            "pageLength": 10,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }

    /*======== Product list DATA TABLE ========*/
    var responsiveDataTable = $("#product_list");
    if (responsiveDataTable.length !== 0) {
        responsiveDataTable.DataTable({
            "aLengthMenu": [[10, 20, 30, -1], [10, 20, 30, "All"]],
            "pageLength": 10,
            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
        });
    }

    /*========== On ckick card zoom (full screen) ===========*/
    $(".gi-full-card").on("click", function () {
        $(this).hide();
        $(this).parent(".header-tools").append('<a href="javascript:void(0)" class="m-l-10 gi-full-card-close"><i class="ri-close-fill"></i></a>');
        $(this).closest(".gi-card").parent().toggleClass("gi-full-screen");
        $(this).closest(".gi-card").parent().parent().append('<div class="gi-card-overlay"></div>');
    });
    $("body").on("click", ".gi-card-overlay, .gi-full-card-close", function () {
        $(".gi-card").find(".gi-full-card-close").remove();
        $(".gi-card").find(".gi-full-card").show();
        $(".gi-card").parent().removeClass("gi-full-screen");
        $(".gi-card-overlay").remove();
    });

    /*========== Upload image preview ===========*/
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imagePreview').css('background-image', 'url(' + e.target.result + ')');
                $('#imagePreview').hide();
                $('#imagePreview').fadeIn(650);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#imageUpload").change(function () {
        readURL(this);
    });

    /*======== Product Image Change on Upload ========*/
    $("body").on("change", ".gi-image-upload", function (e) {

        var lkthislk = $(this);

        if (this.files && this.files[0]) {

            var reader = new FileReader();
            reader.onload = function (e) {

                var ec_image_preview = lkthislk.parent().parent().children('.gi-preview').find('.gi-image-preview').attr('src', e.target.result);

                ec_image_preview.hide();
                ec_image_preview.fadeIn(650);
            }
            reader.readAsDataURL(this.files[0]);
        }
    });

    /*======== Ripple button animation ========*/
    $('.ripple-btn, .ripple-default-btn').click(function (e) {
        // Create a ripple element
        var ripple = $('<span class="ripple"></span>');

        // Append the ripple element to the button
        $(this).append(ripple);

        // Position the ripple element at the click position
        ripple.css({
            top: e.pageY - $(this).offset().top,
            left: e.pageX - $(this).offset().left
        });

        // Remove the ripple element after the animation completes
        setTimeout(function () {
            ripple.remove();
        }, 1000);
    });

    /*======== Chat sidebar (chatapp page) ========*/
    $('.gi-btn-chat').click(function (e) {
        $('#chat_sidebar').addClass("open-chat-list");
        $('.chat-sidebar-overlay').fadeIn();
    });
    $('.chat-sidebar-overlay, .close-chat-list').click(function (e) {
        $('#chat_sidebar').removeClass("open-chat-list");
        $('.chat-sidebar-overlay').fadeOut();
    });

    /*======== Popup alert ========*/
    $('.pop-basic').on("click", function () {
        Swal.fire('Any fool can use a computer')
    });
    $('.pop-text-under').on("click", function () {
        Swal.fire(
                'The Internet?',
                'That thing is still around?',
                'question'
                )
    });
    $('.pop-error-icon').on("click", function () {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href="">Why do I have this issue?</a>'
        })
    });
    $('.pop-long-content').on("click", function () {
        Swal.fire({
            imageUrl: 'https://placeholder.pics/svg/300x1500',
            imageHeight: 1500,
            imageAlt: 'A tall image'
        })
    });
    $('.pop-like').on("click", function () {
        Swal.fire({
            title: '<strong>HTML <u>example</u></strong>',
            icon: 'info',
            html:
                    'You can use <b>bold text</b>, ' +
                    '<a href="//sweetalert2.github.io">links</a> ' +
                    'and other HTML tags',
            showCloseButton: true,
            showCancelButton: true,
            focusConfirm: false,
            confirmButtonText:
                    '<i class="ri-thumb-up-line"></i> Great!',
            confirmButtonAriaLabel: 'Thumbs up, great!',
            cancelButtonText:
                    '<i class="ri-thumb-down-line"></i>',
            cancelButtonAriaLabel: 'Thumbs down'
        })
    });
    $('.pop-save').on("click", function () {
        Swal.fire({
            title: 'Do you want to save the changes?',
            showDenyButton: true,
            showCancelButton: true,
            confirmButtonText: 'Save',
            denyButtonText: `Don't save`,
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                Swal.fire('Saved!', '', 'success')
            } else if (result.isDenied) {
                Swal.fire('Changes are not saved', '', 'info')
            }
        })
    });
    $('.pop-positioned-timeout').on("click", function () {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Your work has been saved',
            showConfirmButton: false,
            timer: 1500
        })
    });
    $('.pop-fade-down').on("click", function () {
        Swal.fire({
            title: 'Custom animation with Animate.css',
            showClass: {
                popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
                popup: 'animate__animated animate__fadeOutUp'
            }
        })
    });
    $('.pop-delete').on("click", function () {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                        )
            }
        })
    });
    $('.pop-success').on("click", function () {
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            buttonsStyling: false
        })
        swalWithBootstrapButtons.fire({
            title: 'Best work!',
            text: "You job is done!",
            icon: 'success',
            showCancelButton: true,
            confirmButtonText: 'Ok',
        })
    });
    $('.pop-delete-cancel').on("click", function () {
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            buttonsStyling: false
        })

        swalWithBootstrapButtons.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                swalWithBootstrapButtons.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                        )
            } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                    ) {
                swalWithBootstrapButtons.fire(
                        'Cancelled',
                        'Your imaginary file is safe :)',
                        'error'
                        )
            }
        })
    });
    $('.pop-img').on("click", function () {
        Swal.fire({
            title: 'Sweet!',
            text: 'Modal with a custom image.',
            imageUrl: 'https://unsplash.it/400/200',
            imageWidth: 400,
            imageHeight: 200,
            imageAlt: 'Custom image',
        })
    });
    $('.pop-custom').on("click", function () {
        Swal.fire({
            title: 'Custom width, padding, color, background.',
            width: 600,
            padding: '3em',
            color: '#716add',
            background: '#fff',
            backdrop: `
              rgba(0,0,123,0.4)
              left top
              no-repeat
            `
        })
    });
    $('.pop-auto-close').on("click", function () {

        let timerInterval
        Swal.fire({
            title: 'Auto close alert!',
            html: 'I will close in <b></b> milliseconds.',
            timer: 2000,
            timerProgressBar: true,
            didOpen: () => {
                Swal.showLoading()
                const b = Swal.getHtmlContainer().querySelector('b')
                timerInterval = setInterval(() => {
                    b.textContent = Swal.getTimerLeft()
                }, 100)
            },
            willClose: () => {
                clearInterval(timerInterval)
            }
        }).then((result) => {
            /* Read more about handling dismissals below */
            if (result.dismiss === Swal.DismissReason.timer) {
                // console.log('I was closed by the timer')
            }
        })
    });
    $('.pop-rtl').on("click", function () {
        Swal.fire({
            title: 'هل تريد الاستمرار؟',
            icon: 'question',
            iconHtml: '؟',
            confirmButtonText: 'نعم',
            cancelButtonText: 'لا',
            showCancelButton: true,
            showCloseButton: true
        })
    });
    $('.pop-ajax').on("click", function () {
        Swal.fire({
            title: 'Submit your Github username',
            input: 'text',
            inputAttributes: {
                autocapitalize: 'off'
            },
            showCancelButton: true,
            confirmButtonText: 'Look up',
            showLoaderOnConfirm: true,
            preConfirm: (login) => {
                return fetch(`//api.github.com/users/${login}`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error(response.statusText)
                            }
                            return response.json()
                        })
                        .catch(error => {
                            Swal.showValidationMessage(
                                    `Request failed: ${error}`
                                    )
                        })
            },
            allowOutsideClick: () => !Swal.isLoading()
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: `${result.value.login}'s avatar`,
                    imageUrl: result.value.avatar_url
                })
            }
        })
    });

    /*========== Tools Sidebar ===========*/
    $('.gi-tools-sidebar-toggle').on("click", function () {
        $('.gi-tools-sidebar').addClass("open-tools");
        $('.gi-tools-sidebar-overlay').fadeIn();
        $('.gi-tools-sidebar-toggle').hide();

    });
    $('.gi-tools-sidebar-overlay, .close-tools').on("click", function () {
        $('.gi-tools-sidebar').removeClass("open-tools");
        $('.gi-tools-sidebar-overlay').fadeOut();
        $('.gi-tools-sidebar-toggle').fadeIn();

    });

    /*========== Tools Sidebar ===========*/
    // Mode 
    var $link = $('<link>', {
        rel: 'stylesheet',
        href: 'assets/css/dark.css',
        id: 'dark'
    });
    $('.gi-tools-item.mode').on("click", function () {
        var modes = $(this).attr("data-gi-mode-tool");
        if (modes == "light") {
            $("body").attr("data-gi-mode", "light");
            $("#dark").remove();
            var headerModes = $(".gi-tools-item.header").attr("data-header-mode");
            if (headerModes == "light") {
                $(".gi-tools-item.header[data-header-mode='light']").addClass("active");
                $(".gi-tools-item.header[data-header-mode='dark']").removeClass("active");
                $(".gi-header").attr("data-header-mode-tool", "light");
            }
            $(".gi-mode.light").css("display", "none");
            $(".gi-mode.dark").css("display", "flex");

        } else if (modes == "dark") {
            $("body").attr("data-gi-mode", "dark");
            $("link[href='assets/css/style.css']").after($link);
            var headerModes = $(".gi-tools-item.header").attr("data-header-mode");
            if (headerModes == "light") {
                $(".gi-tools-item.header[data-header-mode='dark']").addClass("active");
                $(".gi-tools-item.header[data-header-mode='light']").removeClass("active");
                $(".gi-header").attr("data-header-mode-tool", "dark");
            }
            $(".gi-mode.dark").css("display", "none");
            $(".gi-mode.light").css("display", "flex");
        }

        $(this).parents(".gi-tools-info").find('.gi-tools-item.mode').removeClass("active")
        $(this).addClass("active");
    });
    // Header 
    $('.gi-tools-item.header').on("click", function () {
        var headerModes = $(this).attr("data-header-mode");
        if (headerModes == "light") {
            $('.gi-header').attr('data-header-mode-tool', 'light');
        } else if (headerModes == "dark") {
            $('.gi-header').attr('data-header-mode-tool', 'dark');
        }
        $(this).parents(".gi-tools-info").find('.gi-tools-item.header').removeClass("active")
        $(this).addClass("active");
    });
    // Sidebar 
    $('.gi-tools-item.sidebar').on("click", function () {
        var sidebarModes = $(this).attr("data-sidebar-mode-tool");
        if (sidebarModes == "light") {
            $('.gi-sidebar').attr('data-mode', 'light');
        } else if (sidebarModes == "dark") {
            $('.gi-sidebar').attr('data-mode', 'dark');
        } else if (sidebarModes == "bg-1") {
            $('.gi-sidebar').attr('data-mode', 'bg-1');
        } else if (sidebarModes == "bg-2") {
            $('.gi-sidebar').attr('data-mode', 'bg-2');
        } else if (sidebarModes == "bg-3") {
            $('.gi-sidebar').attr('data-mode', 'bg-3');
        } else if (sidebarModes == "bg-4") {
            $('.gi-sidebar').attr('data-mode', 'bg-4');
        }
        $(this).parents(".gi-tools-info").find('.gi-tools-item.sidebar').removeClass("active")
        $(this).addClass("active");
    });
    // Backgrounds 
    $('.gi-tools-item.bg').on("click", function () {
        var bgModes = $(this).attr("data-bg-mode");
        if (bgModes == "default") {
            $('#mainBg').remove();
        } else if (bgModes == "bg-1") {
            $('#mainBg').remove();
            $("link[href='assets/css/style.css']").after("<link id='mainBg' href='assets/css/bg-1.css' rel='stylesheet'>");
        } else if (bgModes == "bg-2") {
            $('#mainBg').remove();
            $("link[href='assets/css/style.css']").after("<link id='mainBg' href='assets/css/bg-2.css' rel='stylesheet'>");
        } else if (bgModes == "bg-3") {
            $('#mainBg').remove();
            $("link[href='assets/css/style.css']").after("<link id='mainBg' href='assets/css/bg-3.css' rel='stylesheet'>");
        } else if (bgModes == "bg-4") {
            $('#mainBg').remove();
            $("link[href='assets/css/style.css']").after("<link id='mainBg' href='assets/css/bg-4.css' rel='stylesheet'>");
        } else if (bgModes == "bg-5") {
            $('#mainBg').remove();
            $("link[href='assets/css/style.css']").after("<link id='mainBg' href='assets/css/bg-5.css' rel='stylesheet'>");
        }
        $(this).parents(".gi-tools-info").find('.gi-tools-item.bg').removeClass("active")
        $(this).addClass("active");
    });
    // Box design
    $('.gi-tools-item.box').on("click", function () {
        var boxModes = $(this).attr("data-box-mode-tool");
        $("#box_design").remove();
        if (boxModes == "default") {
            $("#box_design").remove();
        } else if (boxModes == "box-1") {
            $("link[href='assets/css/style.css']").after('<link id="box_design" href="assets/css/box-1.css" rel="stylesheet">');
        } else if (boxModes == "box-2") {
            $("link[href='assets/css/style.css']").after('<link id="box_design" href="assets/css/box-2.css" rel="stylesheet">');
        } else if (boxModes == "box-3") {
            $("link[href='assets/css/style.css']").after('<link id="box_design" href="assets/css/box-3.css" rel="stylesheet">');
        }
        $(this).parents(".gi-tools-info").find('.gi-tools-item.box').removeClass("active")
        $(this).addClass("active");
    });


    document.addEventListener("DOMContentLoaded", function () {
        let dropdowns = document.querySelectorAll(".dropdown");

        dropdowns.forEach(drop => {
            drop.addEventListener("click", function (event) {
                event.stopPropagation();
                this.classList.toggle("active");
            });
        });

        document.addEventListener("click", function () {
            dropdowns.forEach(drop => drop.classList.remove("active"));
        });
    });
    // Footer Copyright
    var date = new Date().getFullYear();
    document.getElementById("copyright_year").innerHTML = date;

})(jQuery);