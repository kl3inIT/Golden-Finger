/* ====== Index ======

1. Page Date (Breadcrumbs)
2. Revenue Overview

====== End ======*/
$(function () {
  "use strict";

  /*======== 1. Page Date (Breadcrumbs) ========*/
  if ($("#pagedate")) {
    var start = moment();
    var end = moment();
    var cb = function (start, end) {
      $("#pagedate .gi-date-range span").html(
        
        "<a href='javascript:void(0)' class='calendar' title='Date'><i class='ri-calendar-line'></i>" + start.format("ll") + " - " + end.format("ll") + "</a>"
      );
    };

    $("#pagedate .gi-date-range").daterangepicker(
      {
        startDate: start,
        endDate: end,
        opens: 'left',
        ranges: {
          Today: [moment(), moment()],
          Yesterday: [
            moment().subtract(1, "days"),
            moment().subtract(1, "days")
          ],
          "Last 7 Days": [moment().subtract(6, "days"), moment()],
          "Last 30 Days": [moment().subtract(29, "days"), moment()],
          "This Month": [moment().startOf("month"), moment().endOf("month")],
          "Last Month": [
            moment()
              .subtract(1, "month")
              .startOf("month"),
            moment()
              .subtract(1, "month")
              .endOf("month")
          ]
        }
      },
      cb
    );
    cb(start, end);
  }

  /*======== 2. Revenue Overview ========*/
  if ($(".revenue-overview")) {
    var start = moment().subtract(1, "days");
    var end = moment().subtract(1, "days");
    var cb = function (start, end) {
      $(".revenue-overview .gi-date-range span").html(
        start.format("ll") + " - " + end.format("ll")
      );
    };

    $(".revenue-overview .gi-date-range").daterangepicker(
      {
        startDate: start,
        endDate: end,
        opens: 'left',
        ranges: {
          Today: [moment(), moment()],
          Yesterday: [
            moment().subtract(1, "days"),
            moment().subtract(1, "days")
          ],
          "Last 7 Days": [moment().subtract(6, "days"), moment()],
          "Last 30 Days": [moment().subtract(29, "days"), moment()],
          "This Month": [moment().startOf("month"), moment().endOf("month")],
          "Last Month": [
            moment()
              .subtract(1, "month")
              .startOf("month"),
            moment()
              .subtract(1, "month")
              .endOf("month")
          ]
        }
      },
      cb
    );
    cb(start, end);
  }

   /*======== 3. Map(index.html), recent order(ecommerce.html), best seller(ecommerce.html),top product(ecommerce.html), Device user(analytics)  ========*/
   if ($("#fxmap, #ordertbl, #best_seller_tbl, #top_product_tbl, #deviceUser")) {
    var start = moment();
    var end = moment();
    var cb = function (start, end) {
      $("#fxmap .gi-date-range span, #ordertbl .gi-date-range span, #best_seller_tbl .gi-date-range span, #top_product_tbl .gi-date-range span, #deviceUser .gi-date-range span").html(
        
        "<a href='javascript:void(0)' class='calendar' title='Date'><i class='ri-equalizer-line'></i></a>"
      );
    };

    $("#fxmap .gi-date-range, #ordertbl .gi-date-range, #best_seller_tbl .gi-date-range, #top_product_tbl .gi-date-range, #deviceUser .gi-date-range").daterangepicker(
      {
        startDate: start,
        endDate: end,
        opens: 'left',
        ranges: {
          Today: [moment(), moment()],
          Yesterday: [
            moment().subtract(1, "days"),
            moment().subtract(1, "days")
          ],
          "Last 7 Days": [moment().subtract(6, "days"), moment()],
          "Last 30 Days": [moment().subtract(29, "days"), moment()],
          "This Month": [moment().startOf("month"), moment().endOf("month")],
          "Last Month": [
            moment()
              .subtract(1, "month")
              .startOf("month"),
            moment()
              .subtract(1, "month")
              .endOf("month")
          ]
        }
      },
      cb
    );
    cb(start, end);
  }

  /*======== 4. Deal table ========*/
  if ($("#dealtbl")) {
    var start = moment();
    var end = moment();
    var cb = function (start, end) {
      $("#dealtbl .gi-date-range span").html(
        
        "<a href='javascript:void(0)' class='calendar' title='Date'><i class='ri-equalizer-line'></i></a>"
      );
    };

    $("#dealtbl .gi-date-range").daterangepicker(
      {
        startDate: start,
        endDate: end,
        opens: 'left',
        ranges: {
          Today: [moment(), moment()],
          Yesterday: [
            moment().subtract(1, "days"),
            moment().subtract(1, "days")
          ],
          "Last 7 Days": [moment().subtract(6, "days"), moment()],
          "Last 30 Days": [moment().subtract(29, "days"), moment()],
          "This Month": [moment().startOf("month"), moment().endOf("month")],
          "Last Month": [
            moment()
              .subtract(1, "month")
              .startOf("month"),
            moment()
              .subtract(1, "month")
              .endOf("month")
          ]
        }
      },
      cb
    );
    cb(start, end);
  }

    /*======== 5. Deal table ========*/
    if ($("#campaigns")) {
      var start = moment();
      var end = moment();
      var cb = function (start, end) {
        $("#campaigns .gi-date-range span").html(
          
          "<a href='javascript:void(0)' class='calendar' title='Date'><i class='ri-equalizer-line'></i></a>"
        );
      };
  
      $("#campaigns .gi-date-range").daterangepicker(
        {
          startDate: start,
          endDate: end,
          opens: 'left',
          ranges: {
            Today: [moment(), moment()],
            Yesterday: [
              moment().subtract(1, "days"),
              moment().subtract(1, "days")
            ],
            "Last 7 Days": [moment().subtract(6, "days"), moment()],
            "Last 30 Days": [moment().subtract(29, "days"), moment()],
            "This Month": [moment().startOf("month"), moment().endOf("month")],
            "Last Month": [
              moment()
                .subtract(1, "month")
                .startOf("month"),
              moment()
                .subtract(1, "month")
                .endOf("month")
            ]
          }
        },
        cb
      );
      cb(start, end);
    }
    /*======== 6. Single date picker (create-project.html) ========*/
    $('input[name="deadline"]').daterangepicker({
      singleDatePicker: true,
      showDropdowns: true,
      minYear: 2022,
      maxYear: 2030,
    }, function(start, end, label) {
      var years = moment().diff(start, 'years');
      // alert("You are " + years + " years old!");
    });
});
