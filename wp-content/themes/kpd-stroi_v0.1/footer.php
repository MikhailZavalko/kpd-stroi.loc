<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
$template_url = get_template_directory_uri();
?>

<?php wp_footer(); ?>

<footer id="contacts">
	<div class="container">
		<h2>Контакты</h2>
		<div class="contacts">



			<?php
			$contact_phone = get_field('contact_phone');
			$address = get_field('address');

			if( $contact_phone ) {
				echo '<a href="tel:' . $contact_phone . '" class="cont-block">
				<div class="icon">
				<svg width="25" height="25" viewBox="0 0 27 34" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" fill="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" fill="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" fill="white"/><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" stroke="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" stroke="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" stroke="white"/></svg>
				</div>
				<div class="text">
				<p>Бесплатная консультация:</p>
				<p>' . $contact_phone . '</p>
				</div>
				</a>';
			}

			if( $address ) {
				echo '<div class="cont-block">
				<div class="icon">
				<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" width="26px" height="30px" fill="white" style="enable-background:new 0 0 512 512;" xml:space="preserve"><g><g><path d="M256,0C161.896,0,85.333,76.563,85.333,170.667c0,28.25,7.063,56.26,20.49,81.104L246.667,506.5 		c1.875,3.396,5.448,5.5,9.333,5.5s7.458-2.104,9.333-5.5l140.896-254.813c13.375-24.76,20.438-52.771,20.438-81.021	C426.667,76.563,350.104,0,256,0z M256,256c-47.052,0-85.333-38.281-85.333-85.333c0-47.052,38.281-85.333,85.333-85.333 s85.333,38.281,85.333,85.333C341.333,217.719,303.052,256,256,256z"/></g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
				</div>
				<div class="text">
				<p>Нас легко найти:</p>
				<p>' . $address . '</p>
				</div>
				</div>';
			}

			 if( have_rows('instagram_links') ): ?>

				<div class="cont-block">
					<div class="icon">
						<svg width="24" height="26" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M373.406 0H138.594C62.1719 0 0 62.1719 0 138.594V373.41C0 449.828 62.1719 512 138.594 512H373.41C449.828 512 512 449.828 512 373.41V138.594C512 62.1719 449.828 0 373.406 0V0ZM256 395.996C178.805 395.996 116.004 333.195 116.004 256C116.004 178.805 178.805 116.004 256 116.004C333.195 116.004 395.996 178.805 395.996 256C395.996 333.195 333.195 395.996 256 395.996V395.996ZM399.344 149.02C376.531 149.02 357.977 130.465 357.977 107.652C357.977 84.8398 376.531 66.2812 399.344 66.2812C422.156 66.2812 440.715 84.8398 440.715 107.652C440.715 130.465 422.156 149.02 399.344 149.02Z" fill="white"/><path d="M256 146.02C195.359 146.02 146.02 195.355 146.02 256C146.02 316.641 195.359 365.98 256 365.98C316.645 365.98 365.98 316.641 365.98 256C365.98 195.355 316.645 146.02 256 146.02Z" fill="white"/><path d="M399.344 96.3008C393.086 96.3008 387.992 101.395 387.992 107.652C387.992 113.91 393.086 119.004 399.344 119.004C405.605 119.004 410.699 113.914 410.699 107.652C410.699 101.391 405.605 96.3008 399.344 96.3008Z" fill="white"/></svg>
					</div>
					<div class="text">

						<?php while( have_rows('instagram_links') ): the_row();
							$instagram_link = get_sub_field('instagram_link');
							$instagram_link_text = get_sub_field('instagram_link_text'); ?>

							<a href="<?php echo $instagram_link; ?>" target="_blank" rel="nofollow"><?php echo $instagram_link_text; ?></a>

						<?php endwhile; ?>

					</div>
				</div>

			<?php endif; ?>



		</div>
	</div>
</footer>





<div class="d-none">

	<form class="popup-form zoom-anim-dialog form white-bg" id="take-information">
		<div class="success">
			<p><span>Спасибо за заявку!<br><span>Наш менеджер свяжется с вами в течение рабочего дня!</span></span></p>
		</div>
		<h4>Позвоните нам, для бесплатной консультации</h4>
		<span>
			<a href="tel:+7(4212)69-81-00">
				<svg width="25" height="25" viewBox="0 0 27 34" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" fill="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" fill="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" fill="white"/><path d="M8.99953 1L13.4995 9L9.99952 11L5.49953 3L8.99953 1Z" stroke="white"/><path d="M3.99953 4C0.99311 5.29987 -0.318684 10.0036 1.99955 16.5C4.36771 23.1363 7.99943 29 13 32C14.6489 32.9893 18.3729 33.5443 20.9995 32.5L16.5 25.5C14.0006 26 11.8019 23.802 11.5 23.5C11.121 23.1208 9.02731 20.9295 7.99943 16.5C7.30475 13.5063 8.49943 12 8.49943 12C8.49943 12 5.83283 6.83333 3.99953 4Z" stroke="white"/><path d="M17.9994 24.5L20.9995 22.5L25.9994 30L22.9994 32L17.9994 24.5Z" stroke="white"/></svg>
			+7 (4212) 69-81-00</a>
		</span>
		<p>Или оставьте заявку и наш менеджер свяжется с вами</p>
		<!-- Hidden Required Fields -->
		<input type="hidden" name="project_name" value="КПД-Строй">
		<input type="hidden" name="form_subject" value="КПД-Строй | заявка на консультацию">
		<!-- END Hidden Required Fields -->
		<div class="inputs">
			<input class="input" type="text" name="Имя" placeholder="Ваше имя" required>
			<input class="input phone" id="phone" type="text" name="Телефон" placeholder="Номер телефона" required>
			<input class="input" type="text" name="email" placeholder="E-mail" required>
		</div>
		<button class="button button-wline submit-button"><span>Оставить заявку</span></button>
		<div class="confirm">
			<input class="checkbox" type="checkbox" checked required />
			<p class="personal-data">Нажимая на кнопку, я даю свое согласие на обработку <br>персональных данных и соглашаюсь с условиями <br>политики конфиденциальности</p>
		</div>
	</form>

	<div id="politic" class="politic zoom-anim-dialog">
		<h4>Политика конфиденциальности</h4>
		<p>Мы не собираем личную информацию о Вас, когда Вы заходите на наш сайт. Вы можете анонимно просматривать сайт.
			Тем
			не менее, Ваш браузер все же автоматически сообщает нам тип компьютера и операционной системы, которые Вы
			используете. Единственная личная информация о Вас, которую мы получаем, это те данные, которые Вы добровольно
			предоставляете при заполнении форм. При заполнении форм на сайте у Вас запросят персональную информацию, такую
			как
			имя, номер телефона. Предоставление такой информации в ответ на запрос осуществляется Вами исключительно
			добровольно. Предоставленная Вами информация используется чтобы оказать те услуги, которые Вы сами запрашиваете.
		</p>
	</div>

</div>

<script src="<?php echo $template_url; ?>/js/scripts.min.js?v=1.2"></script>
<script src="https://maps.api.2gis.ru/2.0/loader.js?pkg=full"></script>
<script type="text/javascript">
	var map;

	DG.then(function () {
		map = DG.map('map', {
			center: [48.51, 135.190],
			zoom: 14,
			lazy: true,
			scrollWheelZoom: false,
		});

		DG.marker([48.514418, 135.19128]).addTo(map).bindPopup('п.&nbsp;«Семейный» Тополево, Хабаровский край');
	});
</script>

</body>

</html>