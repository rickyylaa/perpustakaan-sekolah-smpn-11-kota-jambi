/*
Template Name    : Trends - eCommerce Bootstrap 4 Reaponsive HTML5 Template
Version          : 1.0.0
Author           : Ashish Shah
Author URI       : http://ncodetechnologies.com//
Created.         : July 2018
File Description : Main js file of the template

// ------------------------------------------ //
//              Table Of Content              //
// ------------------------------------------ //

1. Preloader
2. Dropdown styling
3. Header sticky
4. Fancy scrollbar
5. Search Toggle
6. owl Banner carousel
7. owl Blog carousel
8. owl Testimonial carousel
9. owl Brand carousel
10. Responsive Tab
11. Price range
12. List Grid view change
13. product accordian add active
14. toggles
	14.1 Category Toggle
	14.2 Brand Toggle
	14.3 Color Toggle
	14.4 Price Toggle
	14.5 New arrival Toggle
15. Custom quantity increment
16. Product Gallery
17. Cart accordian
18. Testimonial carousel
19. Lookbook script
20. Instantiate EasyZoom
21. Colorswitcher
22. Scroll to top
23. Newsletter Popup

*/
$(function() {
    'use strict';
    ///////---------------1. Preloader-------------///////
    var preLoader = function() {
      $('.loader').delay(1500).fadeOut('slow');
    };
    ///////---------------2. Dropdown styling-------------///////
    var crtDrop = function() {
      $('.drop-btn').on('click',function() {
        $(this).next('.dropdown-menu').fadeToggle(500);
      });

    };
    ///////---------------3. Header sticky-------------///////
    var headerFixed = function() {
      window.onscroll = function() {
        myFunction()
      };
      var header = document.getElementById("myHeader");
      var sticky = header.offsetTop;

      function myFunction() {
        if (window.pageYOffset >= sticky) {
          header.classList.add("sticky");
        } else {
          header.classList.remove("sticky");
        }
      }
    };
    ///////---------------4. Fancy scrollbar - cartdropdown, menus-------------///////
    var cartScroll = function() {
      $("#carttoggle").niceScroll({
        cursorborder: "",
        cursorcolor: "#292929",
        boxzoom: false
      }); // First scrollable DIV
    };
    var accScroll = function() {
      $("#top").niceScroll({
        cursorborder: "",
        cursorcolor: "#292929",
        boxzoom: false
      }); // First scrollable DIV
    };
    var wmScroll = function() {
      $("#fix-heightW").on('mouseover',function() {
        $("#fix-heightW").getNiceScroll().resize();
        $("#fix-heightW").niceScroll({
          cursorborder: "",
          cursorcolor: "#292929",
          boxzoom: false
        }); // First scrollable DIV
      });
    };
    var mmScroll = function() {
      $("#fix-heightM").on('mouseover',function() {
        $("#fix-heightM").getNiceScroll().resize();
        $("#fix-heightM").niceScroll({
          cursorborder: "",
          cursorcolor: "#292929",
          boxzoom: false
        }); // First scrollable DIV
      });
    };
    ///////---------------5. Search Toggle-------------///////
    var searchToggle = function() {
      $('.search-container > i').on('click',function() {
        $(".search-content").slideToggle();
        $(this).toggleClass("icon-search icon-close")
      });
    };
    ///////---------------6. owl Banner carousel-------------///////
    var bannerCarousel = function() {
      var owl = $('#owl-banner');
      owl.owlCarousel({
        loop: true,
        items: 1,
        nav: true,
        dots: true,
        autoplay: true,
        autoplayTimeOut: 5000, //5sec
        navText: ['<i class="icon-left-chevron"></i>', '<i class="icon-right-chevron"></i>'], //we will be using font awesome icon here
        responsiveClass: true,
        responsive: {
          0: {
            nav: false
          },
          768: {
            nav: true
          },
        }
      });
      owl.on("changed.owl.carousel", function(event) {
        // selecting the current active item
        var item = event.item.index - 2;
        // first removing animation for all captions
        $('h3').removeClass('animated fadeInDown');
        $('.owl-item').not('.cloned').eq(item).find('h3').addClass('animated fadeInDown');
        $('h2').removeClass('animated fadeInDown');
        $('.owl-item').not('.cloned').eq(item).find('h2').addClass('animated fadeInDown');
        $('p').removeClass('animated fadeInUp');
        $('.owl-item').not('.cloned').eq(item).find('p').addClass('animated fadeInUp');
        $('.sp-btn').removeClass('animated flipInX');
        $('.owl-item').not('.cloned').eq(item).find('.sp-btn').addClass('animated flipInX');
      });
    };
    ///////---------------7. owl Blog carousel-------------///////
    var blogCarousel = function() {
      $('#blog-carousel').owlCarousel({
        loop: true,
        margin: 30,
        items: 2,
        nav: false,
        dots: true,
        autoplay: true,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          768: {
            items: 2,
            nav: false
          }
        }
      });
    };
    ///////---------------8. owl Testimonial carousel-------------///////
    var testimonialCarousel = function() {
      $('#testimon').owlCarousel({
        loop: true,
        items: 1,
        nav: false,
        dots: true,
        autoplay: true,
      });
    };
    ///////---------------9. owl Brand carousel-------------///////
    var brandCarousel = function() {
      $('#brand-carousel').owlCarousel({
        loop: true,
        margin: 74,
        items: 6,
        nav: true,
        dots: false,
        autoplay: true,
        autoWidth: false,
        responsiveClass: true,
        responsive: {
          0: {
            items: 2,
            nav: true,
            autoWidth: false,
            margin: 30,
          },
          576: {
            items: 3,
            nav: true
          },
          767: {
            items: 3,
            nav: true
          },
          992: {
            items: 6,
            nav: true
          }
        }
      });
    };
    ///////---------------10. Responsive Tab-------------///////
    var responsiveTab = function() {
      $('#horizontalTab-arrival').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true, // 100% fit in a container
        //closed: 'accordion', // Start closed if in accordion view
        activate: function(event) { // Callback function if tab is switched
        }
      });

    };
    ///////---------------11. Price range-------------///////
    var priceSlider = function() {
      $("#slider-range").slider({
        range: true,
        min: 0,
        max: 500,
        values: [100, 300],
        slide: function(event, ui) {
          $("#amount").html("$" + ui.values[0] + " - $" + ui.values[1]);
          $("#amount1").val(ui.values[0]);
          $("#amount2").val(ui.values[1]);
        }
      });
      $("#amount").html("$" + $("#slider-range").slider("values", 0) +
        " - $" + $("#slider-range").slider("values", 1));
    };
    ///////---------------12. List Grid view change-------------///////
    var viewFilter = function() {
      $('.click').on('click', function(e) {
        if ($(this).hasClass('grid')) {
          $('.content-product').removeClass('list').addClass('grid');
          $('.content-product .col-12').addClass('col-sm-6 col-lg-4');
        } else if ($(this).hasClass('list')) {
          $('.content-product').removeClass('grid').addClass('list');
          $('.content-product .col-12').removeClass('col-sm-6 col-lg-4');
        }
      });
      $('.click').on('click', function(){
          $('.click.active').removeClass('active');
          $(this).addClass('active');
      });
    };
    ///////---------------13. product accordian add active-------------///////
    var prodAccordian = function() {
      $('#accordion .collapse').on('shown.bs.collapse', function() {
        $(this).prev().addClass('active-acc');
      });
      $('#accordion .collapse').on('hidden.bs.collapse', function() {
        $(this).prev().removeClass('active-acc');
      });
    };
    ///////---------------14. toggles-------------///////
    var catToggle = function() {
      if ($(window).width() <= 767) {
        //14.1 Category Toggle
        $("#velaCategories h3").on('click',function() {
          $(".velaContent").slideToggle();
        });
        //14.2 Brand Toggle
        $("#bybrand h3").on('click',function() {
          $("#bybrand .listFilter").slideToggle();
        });
        //14.3 Color Toggle
        $("#bycolor h3").on('click',function() {
          $("#bycolor .listFilter").slideToggle();
        });
        //14.4 Price Toggle
        $("#byprice h3").on('click',function() {
          $(".priceFilter").slideToggle();
        });
        //14.5 New arrival Toggle
        $("#content-arrival h3").on('click',function() {
          $(".arrival-content").slideToggle();
        });
      }
    };
    ///////---------------15. Custom quantity increment-------------///////
    var quantityNumber = function() {
      $(".quantitypic").append('<div class="inc button">+</div><div class="dec button">-</div>');
      $(".button").on("click", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();
        if ($button.text() == "+") {
          var newVal = parseFloat(oldValue) + 1;
        } else {
          // Don't allow decrementing below one
          if (oldValue > 1) {
            var newVal = parseFloat(oldValue) - 1;
          } else {
            newVal = 1;
          }
        }
        $button.parent().find("input").val(newVal);
      });
    };
    ///////---------------16. Product Gallery-------------///////
    var prodGallery = function() {

        var sync1 = $("#sync1");
        var sync2 = $("#sync2");
        var slidesPerPage = 4; //globaly define number of elements per page
        var syncedSecondary = true;
        sync1.owlCarousel({
          items: 1,
          slideSpeed: 2000,
          nav: false,
          autoplay: false,
          dots: false,
          loop: true,
          responsiveRefreshRate: 200,
        }).on('changed.owl.carousel', syncPosition);
        sync2
          .on('initialized.owl.carousel', function() {
            sync2.find(".owl-item").eq(0).addClass("current");
          })
          .owlCarousel({
            items: slidesPerPage,
            dots: false,
            nav: true,
            navText: ['<i class="icon-left-chevron"></i>', '<i class="icon-right-chevron"></i>'], //we will be using font awesome icon here
            margin: 20,
            smartSpeed: 200,
            slideSpeed: 500,
            slideBy: slidesPerPage, //alternatively you can slide by 1, this way the active slide will stick to the first item in the second carousel
            responsiveRefreshRate: 100
          }).on('changed.owl.carousel', syncPosition2);

        function syncPosition(el) {
          //if you set loop to false, you have to restore this next line
          //var current = el.item.index;
          //if you disable loop you have to comment this block
          var count = el.item.count - 1;
          var current = Math.round(el.item.index - (el.item.count / 2) - .5);
          if (current < 0) {
            current = count;
          }
          if (current > count) {
            current = 0;
          }
          //end block
          sync2
            .find(".owl-item")
            .removeClass("current")
            .eq(current)
            .addClass("current");
          var onscreen = sync2.find('.owl-item.active').length - 1;
          var start = sync2.find('.owl-item.active').first().index();
          var end = sync2.find('.owl-item.active').last().index();
          if (current > end) {
            sync2.data('owl.carousel').to(current, 100, true);
          }
          if (current < start) {
            sync2.data('owl.carousel').to(current - onscreen, 100, true);
          }
        }

        function syncPosition2(el) {
          if (syncedSecondary) {
            var number = el.item.index;
            sync1.data('owl.carousel').to(number, 100, true);
          }
        }
        sync2.on("click", ".owl-item", function(e) {
          e.preventDefault();
          var number = $(this).index();
          sync1.data('owl.carousel').to(number, 300, true);
        });

    };
    ///////---------------17. Cart accordian-------------///////
    var cartAcc = function() {
      $("#cartaccordion").accordion({
        heightStyle: "content",
        collapsible: true,
        active: false,
        animate: 200,
        autoHeight: true
      });
    };
    ///////---------------18. Testimonial carousel-------------///////
    var abtCarousel = function() {
      $('#abttestimon').owlCarousel({
        loop: true,
        items: 1,
        nav: true,
        dots: true,
        autoplay: false,
        navText: ['<i class="icon-left-chevron"></i>', '<i class="icon-right-chevron"></i>'], //we will be using font awesome icon here
        responsiveClass: true,
        responsive: {
          0: {
            nav: false,
          },
          576: {
            nav: true
          }
        }
      });
    };
    ///////---------------19. Lookbook script-------------///////
    var flatMove = function() {
      jQuery(document).on('click', '.rev-btn', function() {
        var e = jQuery(this).parents(".lb-panel").first();
        if (e.hasClass("open")) {
          e.removeClass("open");
        } else {
          e.addClass("open");
        }
      });
    };
    ///////---------------20. Instantiate EasyZoom-------------///////
    var flatZoom = function() {
      var $easyzoom = $('.easyzoom').easyZoom();
    };
    ///////---------------21. Colorswitcher-------------///////
    var colorSwitch = function() {
      var colorSheets = [{
          color: "#ee3334",
          title: "Switch to Default",
          href: "css/color-default.css"
        },
        {
          color: "#2d91ff",
          title: "Switch to Blue",
          href: "css/color-blue.css"
        },
        {
          color: "#ff9419",
          title: "Switch to Florecent Orange",
          href: "css/color-forange.css"
        },
        {
          color: "#3bc53b",
          title: "Switch to Florocent Green",
          href: "css/color-fgreen.css"
        },
        {
          color: "#9b52ec",
          title: "Switch to Purple",
          href: "css/color-purple.css"
        },
        {
          color: "#f44ecb",
          title: "Switch to Pink",
          href: "css/color-pink.css"
        }
      ];
      ColorSwitcher.init(colorSheets);
    };
    ///////---------------22. Scroll to top-------------///////
    var goTop = function() {
      $(window).on('scroll',function() {
        if ($(this).scrollTop() > 300) {
          $('.scrollup').fadeIn();
        } else {
          $('.scrollup').fadeOut();
        }
      });
      $('.scrollup').on('click',function() {
        $("html, body").animate({
          scrollTop: 0
        }, 600);
        return false;
      });
    };
    ///////---------------23. Newsletter Popup-------------///////
    var newsModal = function() {
      setTimeout(function() {
          $('#myModalNews').modal('show');
        }, 3500);
    };

    // Dom Ready
    $(function() {
      preLoader();
      crtDrop();
      headerFixed();
      cartScroll();
      accScroll();
      wmScroll();
      mmScroll();
      searchToggle();
      bannerCarousel();
      blogCarousel();
      testimonialCarousel();
      brandCarousel();
      responsiveTab();
      priceSlider();
      viewFilter();
      prodAccordian();
      catToggle();
      quantityNumber();
      prodGallery();
      cartAcc();
      abtCarousel();
      flatMove();
      flatZoom();
      colorSwitch();
      goTop();
      newsModal();
    });
  });




