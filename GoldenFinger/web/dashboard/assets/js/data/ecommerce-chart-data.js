/* ====== Chart ====== */

(function ($) {
    "use strict";
    function newrevenueChart() {
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
                    name: 'Revenue',
                    data: [9, 16, 17, 15, 16, 17, 15, 18, 15, 17, 20],
                }, {
                    name: 'Orders',
                    data: [8, 13, 15, 13, 13, 15, 13, 16, 14, 16, 18],
                }, {
                    name: 'Customers',
                    data: [7, 11, 12, 10, 9, 12, 10, 12, 13, 12, 14],
                },
            ],
            plotOptions: {
                bar: {
                  horizontal: false,
                  columnWidth: '20%',
                }
              },
              stroke: {
                width: [2, 2, 2],
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
            yaxis: {
                labels: {
                    formatter: function (e) {
                        return e + "k"
                    },
                    offsetX: -15
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
    function newcampaignsChart() {
        var options = {
            series: [{
                name: 'Social',
                data: [80, 50, 60, 40, 100, 50],
            }, {
                name: 'Referral',
                data: [40, 100, 50, 80, 60, 90],
            }, {
                name: 'Organic',
                data: [30, 70, 20, 60, 30, 30],
            }
            ],
            chart: {
                height: 300,
                type: 'radar',
                toolbar: {
                    show: false,
                },
            },
            colors: ["#556fbd", "#ff4f7f", "#5caf90"],
            title: {
                text: undefined,
                align: 'left',
                margin: 10,
                offsetX: 0,
                offsetY: 0,
                floating: false,
                style: {
                    fontSize: '14px',
                    fontWeight: 'bold',
                    fontFamily: undefined,
                    color: '#263238'
                },
            },
            legend: {
                show: false,
            },
            xaxis: {
                categories: ['January', 'February', 'March', 'April', 'May', 'June']
            }
        };
        var newcampaignsChart = new ApexCharts(document.querySelector("#newcampaignsChart"), options);
        newcampaignsChart.render();
    }

    jQuery(window).on('load', function () {
        newrevenueChart();
        newcampaignsChart();
    });

})(jQuery);