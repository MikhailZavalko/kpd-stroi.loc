$(function() {

	/* OPEN MOBILE MENU & CLOSE WHEN CLICK OUTSIDE */
	$('.hamburger').on('click', function () {
		$(this).toggleClass('is-active');
		$('.menu').toggleClass('active');
	});

	$(document).click( function(e){
		if ( !$(e.target).closest('.header').length ) {
			$('.hamburger').removeClass('is-active');
			$('.menu').removeClass('active');
		}
	});
	/* OPEN MOBILE MENU & CLOSE WHEN CLICK OUTSIDE */



	/* SCROLL FOR HEADER */
	var windowHeight = window.innerHeight;
	jQuery(document).ready(function($) {
		$(window).on('scroll touchmove', function () {
			$('.header').toggleClass('shrinked', $(document).scrollTop() > windowHeight - 70);
		}).scroll();
	});
	/* SCROLL FOR HEADER */



	/* RIPPLE BUTTON */
	$('.ripplelink').each(function() {
		var $this = $(this);
		var ink, d, x, y;
		setInterval(function() {
			if ($this.find(".ink").length === 0) {
				$this.prepend("<span class='ink'></span>");
			}
			ink = $this.find(".ink");
			ink.removeClass("animate");
			if (!ink.height() && !ink.width()) {
				d = Math.max($this.outerWidth(), $this.outerHeight());
				ink.css({
					height: d,
					width: d
				});
			}
			x = Math.round(Math.random() * ink.width() - ink.width() / 2);
			y = Math.round(Math.random() * ink.height() - ink.height() / 2);
		ink.css({
			top: y + 'px',
			left: x + 'px'
		}).addClass("animate");
	}, 5000)
	});
	/* RIPPLE BUTTON */



	/* FANCYBOX SETTINGS */
	$('.fancybox, .certificate, .open-map').fancybox({
		thumbs : {
			autoStart : true,
			axis : 'x'
		}
	});
	/* FANCYBOX SETTINGS */



	/* MENU TRIGGER FOR SCROLL */
	$(".menu li a, .logo").click(function () {
		elementClick = $(this).attr("href");
		destination = $(elementClick).offset().top -70;
		destination = elementClick == '#home' ? destination - 50 : destination;
		destination = elementClick == '#contacts' ? destination - windowHeight + 450 : destination;
		$("html,body").stop().animate({ scrollTop: destination }, 1000);
		$(".hamburger").removeClass('is-active');
		$('.menu').removeClass('active');
		return false;
	});
	/* MENU TRIGGER FOR SCROLL */



	/* TABS HOME PAGE */
	$('.tab-btn').on('click', function () {
		var $this = $(this),
		dataTab = $this.data('tab'),
		$tabs = $this.closest('.tabs');

		$tabs.find('.tab-btn').removeClass('active').filter($this).addClass('active');
		$tabs.find('.tab-content').removeClass('active');
		setTimeout(function () {
			$tabs.find('.tab-content').hide().filter('[data-tab="' + dataTab + '"]').fadeIn(100).addClass('active');
		}, 100);
	});
	/* TABS HOME PAGE */



	/* MASK PHONE INPUT */
	$('.phone').mask('+7(999) 999 99 99');
	/* MASK PHONE INPUT */



	/* SLIDERS */
	$('.slides').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: true,
		fade: true,
		autoplay: true,
		autoplaySpeed: 6000,
		speed: 500,
	});

	$('.certificates-slider').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		draggable: false,
		arrows: true,
		dots: false,
		autoplay: true,
		autoplaySpeed: 5000,
		speed: 500,
		prevArrow: '<i class="fa fa-arrow-circle-left slick-arrow slick-prev" aria-hidden="true"></i>',
		nextArrow: '<i class="fa fa-arrow-circle-right slick-arrow slick-next" aria-hidden="true"></i>',
		responsive: [
		{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3
			}
		},
		{
			breakpoint: 992,
			settings: {
				slidesToShow: 2
			}
		},
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 2
			}
		},
		{
			breakpoint: 576,
			settings: {
				slidesToShow: 1
			}
		}
		]
  });
	/* SLIDERS */



	/* Magnific Popup */
	$('.open-form-button').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-slide-bottom',
		callbacks: {
			beforeOpen: function() {
				var $triggerEl = $(this.st.el),
				newClass = $triggerEl.data("modal-class");
				if (newClass) {
					this.st.mainClass = this.st.mainClass + ' ' + newClass;
				}
			}
		}
	});
	/* Magnific Popup */



	/* YANDEX MAPS SETTINGS */
	ymaps.ready(function() {

		if( document.getElementById('map') ) {
			var salesDep = new ymaps.Map("map",{
				center: [48.514879, 135.190759],
				zoom: 16,
				controls: ['zoomControl'],
				behaviors: ["drag", "dblClickZoom"]
			}),
			depMarker = new ymaps.Placemark([48.514879, 135.190759],{ hintContent: "п. Семейный" },
			{
				iconLayout: "default#image",
				// iconImageHref: "../wp-content/themes/kpd-stroi/img/pin.svg",
				iconImageHref: "../wp-content/themes/kpd-stroi/img/pin.svg",
				iconImageSize: [50, 50],
				iconImageOffset: [-25, -50]
			});
			salesDep.geoObjects.add(depMarker);
		}

		if( document.getElementById('mapSales') ) {
			var salesDep = new ymaps.Map("mapSales",{
				center: [48.471580, 135.066150],
				zoom: 16,
				controls: ['zoomControl'],
				behaviors: ["drag", "dblClickZoom"]
			}),
			depMarker = new ymaps.Placemark([48.471580, 135.066150],{ hintContent: "Отдел продаж п.Семейный" },
			{
				iconLayout: "default#image",
				// iconImageHref: "../wp-content/themes/kpd-stroi/img/pin.svg",
				iconImageHref: "../wp-content/themes/kpd-stroi/img/pin.svg",
				iconImageSize: [50, 50],
				iconImageOffset: [-25, -50]
			});
			salesDep.geoObjects.add(depMarker);
		}

	});
	/* YANDEX MAPS SETTINGS */



	/* E-mail Ajax Send */
	$("form").submit(function(e) {
		e.preventDefault;
		var th = $(this);
		$('.form').addClass('loading');
		$.ajax({
			type: "POST",
			url: "../send.php",
			data: th.serialize()
		}).done(function() {
			$('.form').removeClass('loading');
			$(".success").addClass("visible");
			setTimeout(function() {
				// Done Functions
				th.trigger("reset");
				$(".success").removeClass("visible");
				$.magnificPopup.close();
			}, 7000);
		});
		return false;
	});
	/* E-mail Ajax Send */

});
