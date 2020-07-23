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
			$('.header').toggleClass('shrinked', $(document).scrollTop() > windowHeight - 100);
		}).scroll();
	});
	/* SCROLL FOR HEADER */



	/* FANCYBOX SETTINGS */
	$('.fancybox').fancybox();
	/* FANCYBOX SETTINGS */



	/* MENU TRIGGER FOR SCROLL */
	$(".menu li a").click(function () {
		elementClick = $(this).attr("href");
		destination = $(elementClick).offset().top -70;
		destination = elementClick == '#technologies' ? destination - 50 : destination;
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
			}, 14000);
		});
		return false;
	});
	/* E-mail Ajax Send */

});
