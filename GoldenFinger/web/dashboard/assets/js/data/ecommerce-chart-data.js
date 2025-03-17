/* ====== Chart ====== */

(function ($) {
    "use strict";

    function newrevenueChart() {
        // Đảm bảo dữ liệu revenue đã được chuyển đổi
        var revenueDataK = revenueData ? revenueData.map(value => parseFloat((value / 1000).toFixed(2))) : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        
        var options = {
            chart: {
                height: 365,
                type: 'line',
                stacked: false,
                foreColor: '#373d3f',
                sparkline: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: true,
                    enabledOnSeries: undefined,
                    top: 5,
                    left: 5,
                    blur: 3,
                    color: '#000',
                    opacity: 0.1
                },
                toolbar: {
                    show: !1
                }
            },
            dataLabels: {
                enabled: !1
            },
            series: [
                {
                    name: 'Revenue (k$)',
                    data: revenueDataK
                }, {
                    name: 'Orders',
                    data: ordersData || [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                }, {
                    name: 'Customers',
                    data: customersData || [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                },
            ],
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '20%',
                }
            },
            stroke: {
                width: [3, 2, 2], // Tăng độ rộng cho đường Revenue
                curve: "smooth",
            },
            fill: {
                opacity: [1, 1, 1],
                gradient: {
                    inverseColors: false,
                    shade: 'light',
                    type: "vertical",
                    opacityFrom: .45,
                    opacityTo: .05,
                    stops: [50, 100, 100, 100]
                }
            },
            colors: ["#556fbd", "#50d1f8", "#5caf90"],
            xaxis: {
                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                axisTicks: {
                    show: !1
                },
                axisBorder: {
                    show: !1
                }
            },
            // Cài đặt y axis đơn giản
            yaxis: {
                labels: {
                    formatter: function (val) {
                        return val;
                    }
                },
                title: {
                    text: "Value"
                }
            },
            tooltip: {
                shared: true,
                intersect: false,
                y: {
                    formatter: function (y, { seriesIndex, dataPointIndex, w }) {
                        if (seriesIndex === 0) {
                            return "$" + y + "k";
                        }
                        return y;
                    }
                }
            },
            legend: {
                show: !0,
                horizontalAlign: "center",
                offsetX: 0,
                offsetY: -5,
                markers: {
                    width: 15,
                    height: 10,
                    radius: 6
                },
                itemMargin: {
                    horizontal: 10,
                    vertical: 0
                }
            },
            grid: {
                show: !1,
                xaxis: {
                    lines: {
                        show: !1
                    }
                },
                yaxis: {
                    lines: {
                        show: !1
                    }
                },
                padding: {
                    top: 0,
                    right: -2,
                    bottom: 15,
                    left: 0
                },
            },
            responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                        height: '250px',
                    },
                    yaxis: {
                        show: false,
                    },
                }
            }]
        };
        var newrevenueChart = new ApexCharts(document.querySelector("#newrevenueChart"), options);
        newrevenueChart.render();
    }

    jQuery(window).on('load', function () {
        newrevenueChart();
    });

})(jQuery);