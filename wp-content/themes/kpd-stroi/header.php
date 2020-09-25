<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
$template_url = get_template_directory_uri();
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>

	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<title><?php wp_title( ' | ', true, 'right' ); ?></title>
	<meta name="theme-color" content="#000">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta name="yandex-verification" content="da6ea4bee5009428" />
	<link rel="icon" type="image/x-icon" href="<?php echo $template_url; ?>/img/favicon/favicon.ico">
	<link rel="stylesheet" id="main" href="<?php echo $template_url; ?>/css/main.min.css?v=1.8" type="text/css" media="all">
	
	<script type="text/javascript">
		/* <![CDATA[ */
		var ajax_info = { url: '/wp-admin/admin-ajax.php', redirecturl: '/' };
		var template_url = '<?php echo $template_url; ?>';
		/* ]]> */
	</script>

	<?php wp_head(); ?>

	<!-- Global site tag (gtag.js) - Google Ads: 666639972 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-666639972"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'AW-666639972');
	</script>

	<!-- Event snippet for Website sale conversion page -->
	<script>
		gtag('event', 'conversion', {
			'send_to': 'AW-666639972/oIelCMfP7dwBEOS88L0C',
			'transaction_id': ''
		});
	</script>


</head>

<body>

	<a href="#take-information" class="sticky-button open-form-button">
		<div class="circle-phone">
			<svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M0.864895 8.86842C2.80412 5.0745 5.67817 1.80212 8.42689 0.915413C9.05539 0.712669 9.7639 0.623007 10.3323 0.959222C12.5655 2.28022 17.6088 7.79563 19.0253 11.7192C19.2985 12.4758 19.2588 13.329 18.7978 13.9882C16.9842 16.5815 12.5598 16.8892 11.8876 19.211C11.4565 20.7002 20.3492 33.2349 26.9182 35.9267C28.0508 36.3908 29.3503 36.0486 30.0584 35.0502C31.4105 33.144 31.9838 30.5843 34.3778 29.2002C34.9181 28.8878 35.5416 28.8599 36.1005 29.1378C38.3629 30.2625 44.196 33.9368 46.5703 37.3279C47.158 38.1673 47.2314 39.2468 46.8049 40.1784C45.8376 42.291 43.7893 45.0211 40.8356 46.8208C40.2852 47.1562 39.6545 47.3417 39.01 47.3321C33.679 47.253 22.0779 43.4579 13.4006 34.7793C5.07941 25.852 -0.470642 11.4813 0.864895 8.86842Z" fill="#6DB925"/></svg>
		</div>
		<div class="circle first"></div>
		<div class="circle second"></div>
	</a>



	<header class="header">
		<div class="container">

			<div class="main-head">
				<a href="#home" class="logo"><img src="<?php echo $template_url; ?>/img/logo.png" alt="logo" class="img-responsive"></a>

				<ul class="menu">
					<li><a href="#home">О проекте</a></li>
					<li><a href="#general-plan">Генплан</a></li>
					<li><a href="#our-homes">Дома</a></li>
					<!-- <li><a href="#progress-section">Ход строительства</a></li> -->
					<li><a href="https://kpd100zavod.ru/" target="_blank" rel="nofollow">Завод</a></li>
					<li><a href="#contacts">Контакты</a></li>
				</ul>

				<a href="tel:+7(4212) 65-08-03" class="header-phone">
					<div class="circle-phone">
						<svg width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg"><g filter="url(#filter0_d)"><circle cx="16.5" cy="22.5" r="14.5" fill="white" stroke="#6DB925" stroke-width="2"/><path d="M6.25446 15.7988C6.99381 14.3524 8.03999 13.0771 9.09343 12.4997C9.67255 12.1824 10.3889 12.2051 10.901 12.6221C11.8557 13.3994 13.2997 15.0344 14.021 16.4375C14.3888 17.1529 14.3562 18.0576 13.7239 18.555C12.7989 19.2827 11.3852 19.5184 11.136 20.3791C10.9648 20.9703 14.1116 25.492 16.8608 27.2812C17.8867 27.9488 19.1436 27.5616 19.7122 26.4777C19.9683 25.9897 20.2352 25.4969 20.6704 25.1102C21.137 24.6956 21.7803 24.7167 22.3234 25.0243C23.3047 25.5801 24.8977 26.6382 25.9349 27.728C26.6413 28.4703 26.7324 29.5716 26.174 30.4308C25.7568 31.0729 25.1617 31.7525 24.4075 32.304C23.8872 32.6845 23.2469 32.8639 22.6054 32.8004C20.0653 32.5488 15.3767 30.8448 11.806 27.2736C8.12089 23.3201 5.66301 16.956 6.25446 15.7988Z" fill="#6DB925"/></g><defs><filter id="filter0_d" x="0" y="0" width="39" height="39" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="3" dy="-3"/><feGaussianBlur stdDeviation="2"/><feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/><feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/><feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/></filter></defs></svg>
					</div>
					<p><span>+7 (4212) 65-08-03</span><br>г. Хабаровск</p>
				</a>

				<button class="hamburger hamburger--collapse" type="button">
					<span class="hamburger-box"><span class="hamburger-inner"></span></span>
				</button>

				

			</div>			

		</div>
	</header>