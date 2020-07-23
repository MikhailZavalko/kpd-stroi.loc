<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
$template_url = get_template_directory_uri();
?>

<?php get_header(); ?>



<a href="#take-information" class="sticky-button open-form-button">
	<div class="circle-phone">
		<svg width="45" height="45" viewBox="0 0 27 34" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" fill="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" fill="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" fill="white"/><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" stroke="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" stroke="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" stroke="white"/></svg>
	</div>
	<div class="circle first"></div>
	<div class="circle second"></div>
</a>



<section class="top-section" id="home">

	<div class="slides">

		<?php if( have_rows('slider_imgs') ): ?>
			<?php while( have_rows('slider_imgs') ): the_row(); 
				$slider_img = get_sub_field('slider_img');
				$original_image = get_image_thumbnail( $slider_img['url'], 0, 0, false ); ?>

				<div class="slide" style="background: url('<?php echo $original_image['thumbnail']; ?>') center no-repeat; background-size: cover;"></div>

			<?php endwhile; ?>
		<?php endif; ?>

	</div>

	<div class="text">
		<div class="div">

			<?php
			$slider_text = get_field('slider_text');
			$slider_head = get_field('slider_head');
			$slider_bottom_text = get_field('slider_bottom_text');

			if( $slider_text ): ?>
				<h3><?php echo $slider_text; ?></h3>
			<?php endif;

			if( $slider_head ): ?>
				<h1><?php echo $slider_head; ?></h1>
			<?php endif;

			if( $slider_bottom_text ): ?>
				<p><?php echo $slider_bottom_text; ?></p>
			<?php endif; ?>

		</div>
	</div>

</section>


<div class="header-wrp">

	<header class="header">
		<div class="container">

			<ul class="menu">
				<li><a href="#home">Главная</a></li>
				<li><a href="#our-homes">Наши дома</a></li>
				<li><a href="#technologies">Технология</a></li>
				<li><a href="#contacts">Контакты</a></li>
			</ul>

			<button class="hamburger hamburger--collapse" type="button">
				<span class="hamburger-box"><span class="hamburger-inner"></span></span>
			</button>

		</div>
	</header>



	<section class="about-section">
		<div class="container">
			<?php while( have_posts() ) : the_post();
				the_content();
			endwhile; ?>
		</div>
	</section>



	<section class="houses-section" id="our-homes">
		<div class="container">
			<?php
			$head_our_homes = get_field('head_our_homes');
			$subhead_our_homes = get_field('subhead_our_homes');
			$text_our_homes = get_field('text_our_homes');
			$bottom_text_our_homes = get_field('bottom_text_our_homes');

			if( $head_our_homes ) {
				echo '<h2>' . $head_our_homes . '<h2>';
			}
			if( $subhead_our_homes ) {
				echo '<h3>' . $subhead_our_homes . '<h3>';
			}
			if( $text_our_homes ) {
				echo '<p>' . $text_our_homes . '</p>';
			}
			?>



























			<div class="tabs houses">

				<div class="tab-contents">

					<div class="tab-content active" data-tab="small">
						<a href="<?php echo $template_url; ?>/img/houses/2_1/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/2_1/1.jpg) center; background-size: cover;" data-fancybox="house-2_1"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/2.jpg" data-fancybox="house-2_1"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/scheme.jpg" data-fancybox="house-2_1"></a>
						</div>
						<div class="text">
							<h2>ДОМ 6х8</h2>
							<h3>Площадь = 106,59 м<sup><small>2</small></sup></h3>
							<ul>
								<li>3 жилые комнаты;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 5.26 <small>млн. ₽</small></h3>
						</div>
					</div>

					<div class="tab-content" data-tab="medium">
						<a href="<?php echo $template_url; ?>/img/houses/2_2/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/2_2/1.jpg) center; background-size: cover;" data-fancybox="house-2_2"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/2.jpg" data-fancybox="house-2_2"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/3.jpg" data-fancybox="house-2_2"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/4.jpg" data-fancybox="house-2_2"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/5.jpg" data-fancybox="house-2_2"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_2/scheme.jpg" data-fancybox="house-2_2"></a>
						</div>
						<div class="text">
							<h2>ДОМ 8х8</h2>
							<h3>Площадь = 138,74 м<sup><small>2</small></sup></h3>
							<ul>
								<li>от 3 жилых комнат;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 6.04 <small>млн. ₽</small></h3>
						</div>
					</div>

					<div class="tab-content" data-tab="big">
						<a href="<?php echo $template_url; ?>/img/houses/2_3/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/2_3/1.jpg) center; background-size: cover;" data-fancybox="house-2_3"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_3/2.jpg" data-fancybox="house-2_3"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_3/3.jpg" data-fancybox="house-2_3"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_3/4.jpg" data-fancybox="house-2_3"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_3/5.jpg" data-fancybox="house-2_3"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/2_3/scheme.jpg" data-fancybox="house-2_3"></a>
						</div>
						<div class="text">
							<h2>ДОМ 8х10</h2>
							<h3>Площадь = 171,27 м<sup><small>2</small></sup></h3>
							<ul>
								<li>от 3 жилых комнат;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 6.56 <small>млн. ₽</small></h3>
						</div>
					</div>

				</div>

				<div class="tab-btns">
					<button class="tab-btn active" data-tab="small">ДОМ 6х8</button>
					<button class="tab-btn" data-tab="medium">ДОМ 8х8</button>
					<button class="tab-btn" data-tab="big">ДОМ 8х10</button>
				</div>

			</div>

			<div class="tabs houses second">

				<div class="tab-contents">

					<div class="tab-content active" data-tab="small">
						<a href="<?php echo $template_url; ?>/img/houses/1.5_1/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/1.5_1/1.jpg) center; background-size: cover;" data-fancybox="house-1.5_1"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/1.5_1/scheme.jpg" data-fancybox="house-1.5_1"></a>
						</div>
						<div class="text">
							<h2>ДОМ 6х8</h2>
							<h3>Площадь = 126,53 м<sup><small>2</small></sup></h3>
							<ul>
								<li>3 жилые комнаты;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 5.46 <small>млн. ₽</small></h3>
						</div>
					</div>

					<div class="tab-content" data-tab="medium">
						<a href="<?php echo $template_url; ?>/img/houses/1.5_2/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/1.5_2/1.jpg) center; background-size: cover;" data-fancybox="house-1.5_2"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/1.5_2/scheme.jpg" data-fancybox="house-1.5_2"></a>
						</div>
						<div class="text">
							<h2>ДОМ 8х8</h2>
							<h3>Площадь = 158,68 м<sup><small>2</small></sup></h3>
							<ul>
								<li>от 3 жилых комнат;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 6.29 <small>млн. ₽</small></h3>
						</div>
					</div>

					<div class="tab-content" data-tab="big">
						<a href="<?php echo $template_url; ?>/img/houses/1.5_3/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/1.5_3/1.jpg) center; background-size: cover;" data-fancybox="house-1.5_3"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/1.5_3/scheme.jpg" data-fancybox="house-1.5_3"></a>
						</div>
						<div class="text">
							<h2>ДОМ 8х10</h2>
							<h3>Площадь = 191,21 м<sup><small>2</small></sup></h3>
							<ul>
								<li>от 3 жилых комнат;</li>
								<li>большая кухня-гостинная 35 кв.м.;</li>
								<li>2 балкона;</li>
								<li>2 санузла;</li>
								<li>участок 10 соток в собственности;</li>
								<li>центральное водоснабжение;</li>
								<li>современная система отопления.</li>
							</ul>
							<h3>Стоимость: 6.86 <small>млн. ₽</small></h3>
						</div>
					</div>

				</div>

				<div class="tab-btns">
					<button class="tab-btn active" data-tab="small">ДОМ 6х8</button>
					<button class="tab-btn" data-tab="medium">ДОМ 8х8</button>
					<button class="tab-btn" data-tab="big">ДОМ 8х10</button>
				</div>

			</div>
		</div>

		<?php
		if( $bottom_text_our_homes ) {
			echo '<div class="container"><p class="bigger">' . $bottom_text_our_homes . '</p></div>';
		}
		?>


	</section>



	<div class="map-general-section">
		<?php echo do_shortcode( '[map]' ); ?>
	</div>



	<div class="map-section">
		<div id="map" style="width:100%; height:450px"></div>
	</div>


</div>


<?php get_footer(); ?>