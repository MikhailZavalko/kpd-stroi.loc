<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
$template_url = get_template_directory_uri();

get_header(); ?>


<section class="top-section" id="home">

	<div class="slides">
		<div class="slide" style="background: url('<?php echo $template_url; ?>/img/slides/1.jpg') center no-repeat; background-size: cover;"></div>
		<div class="slide" style="background: url('<?php echo $template_url; ?>/img/slides/2.jpg') center no-repeat; background-size: cover;"></div>
		<div class="slide" style="background: url('<?php echo $template_url; ?>/img/slides/3.jpg') center no-repeat; background-size: cover;"></div>
	</div>

	<div class="top-content">
		<div class="div">

			<h1>Коттеджный посёлок <span>«Семейный»</span></h1>

			<a href="#take-information" class="top-button ripplelink open-form-button"><span>Узнать Подробнее</span></a>

			<div class="icon-line">

				<div class="icon-text">
					<div class="icon">
						<img src="<?php echo $template_url; ?>/img/top-icon-1.svg" class="img-responsive" alt="icon">
					</div>
					<div class="text">
						<p>4 километра до <br>Карла Маркса</p>
					</div>
				</div>

				<div class="icon-text">
					<div class="icon">
						<img src="<?php echo $template_url; ?>/img/top-icon-2.svg" class="img-responsive" alt="icon">
					</div>
					<div class="text">
						<p>Центральные <br>коммуникации</p>
					</div>
				</div>

				<div class="icon-text">
					<div class="icon">
						<img src="<?php echo $template_url; ?>/img/top-icon-3.svg" class="img-responsive" alt="icon">
					</div>
					<div class="text">
						<p>Закрытая <br>территория</p>
					</div>
				</div>

				<div class="icon-text">
					<div class="icon">
						<img src="<?php echo $template_url; ?>/img/top-icon-4.svg" class="img-responsive" alt="icon">
					</div>
					<div class="text">
						<p>Развитая <br>инфраструктура</p>
					</div>
				</div>

			</div>

		</div>
	</div>

</section>



<section class="about-section">
	<div class="container">

		<div class="about-text">
			<div class="text">
				<h2>О проекте</h2>
				<div class="image"></div>
				<ul>
					<li>Коттеджный поселок “Семейный” расположен в селе Тополево в 15 минутах езды на автомобиле от центра Хабаровска</li>
					<li>Село Тополево является экологически чистым районом пригорода Хабаровска</li>
					<li>В распоряжении жителей коттеджного поселка развитая инфраструктура для жизни - детские сады, школа, поликлиника</li>
					<li>Всего в одной остановке от коттеджного поселка расположен крупный гипермаркет, ТЦ "Стрелка" и магазины низких цен "Амбар", "Светофор"</li>
					<li>Жители коттеджного поселка получают все виды льгот, предусмотренные для проживающих в сельской местности: по коммунальным платежам, при регистрации автомобиля, по налогообложению и другие</li>
				</ul>
			</div>
			<div class="image"></div>
		</div>

		<div class="about-items">

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-1.svg" alt="icon"></div>
				<div class="text">
					<h4>Электричество</h4>
					<p>Электрическая мощность на каждый дом 15 кВт</p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-2.svg" alt="icon"></div>
				<div class="text">
					<h4>Водопровод</h4>
					<p>Центральная холодная вода</p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-8.svg" alt="icon"></div>
				<div class="text">
					<h4>Безопасность</h4>
					<p>Огороженная территория</p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-7.svg" alt="icon"></div>
				<div class="text">
					<h4>Участок</h4>
					<p>Собственный участок 10 соток</p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-3.svg" alt="icon"></div>
				<div class="text">
					<h4>Канализация</h4>
					<p>Шамбо объемом 10 <sup>м3</sup></p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-6.svg" alt="icon"></div>
				<div class="text">
					<h4>Отопление</h4>
					<p>Водяной тёплый пол</p>
				</div>
			</div>

			<div class="about-item">
				<div class="icon"><img class="img-responsive" src="<?php echo $template_url; ?>/img/about-icon-4.svg" alt="icon"></div>
				<div class="text">
					<h4>Скорость</h4>
					<p>Строительство каменного <br>дома за 2 месяца</p>
				</div>
			</div>

		</div>

	</div>
</section>



<div class="map-general-section" id="general-plan">
	<div class="container">
		<h3 class="type-head">Генплан коттеджного поселка "Семейный"</h3>
		<?php echo do_shortcode('[map]'); ?>
		<h3 class="type-head">Выбирайте коттедж своей мечты!</h3>
		<p>Мы предлагаем вам три варианта дома. Каждый из них великолепен по-своему и представлен в трёх размерах. Колосальный опыт строительства позволил нам создать совершенные дома, в которых хочется жить.</p>
		<p>Здесь все продумано до мелочей: 2 санузла, французские окна на втором этаже, визуально увеличивающие пространство, просторные кухня и гостиная.</p>
		<p>А главное, все это по стоимости обычной двухкомнатной квартиры в нашем городе. Преимущества жизни в своем доме очевидны.</p>
	</div>
</div>















<section class="houses-section" id="our-homes">
		<div class="container">

			<div class="tabs houses">

				<div class="tab-contents">


					<div class="tab-content active" data-tab="small">

						<div class="name-image">
							<h3>Народный дом</h3>
							<a href="<?php echo $template_url; ?>/img/houses/people_1/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/people_1/sm.jpg) center; background-size: cover;" data-fancybox="house-people_1"></a>
						</div>

						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/2.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/3.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/4.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/5.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/scheme.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/scheme.jpg"></a>
						</div>

						<div class="text">
							<h2>Дом 6х6</h2>
							<h3>Общая площадь 90,04 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Коттедж для тех, кто ценит простоту и практичность. Архитектура дома - без лишних деталей. Жители коттеджа “Народный” получат ощущение теплоты, комфорта и защищености на долгие годы.</p>
							<h2>Стоимость: 4.15 <small>млн. ₽</small></h2>
						</div>

					</div>


					<div class="tab-content" data-tab="medium">

						<div class="name-image">
							<h3>Народный дом</h3>
							<a href="<?php echo $template_url; ?>/img/houses/people_2/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/people_2/sm.jpg) center; background-size: cover;" data-fancybox="house-people_2"></a>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/standart_2/2.jpg" data-fancybox="house-standart_2" data-thumb="img/houses/standart_2/2.jpg"></a> -->
						</div>

						<div class="text">
							<h2>Дом 9х6</h2>
							<h3>Общая площадь = 120,54 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Коттедж для тех, кто ценит простоту и практичность. Архитектура дома - без лишних деталей. Жители коттеджа “Народный” получат ощущение теплоты, комфорта и защищености на долгие годы.</p>
							<h2>Стоимость: 4.69 <small>млн. ₽</small></h2>
						</div>

					</div>


					<div class="tab-content" data-tab="big">

						<div class="name-image">
							<h3>Народный дом</h3>
							<a href="<?php echo $template_url; ?>/img/houses/people_3/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/people_3/sm.jpg) center; background-size: cover;" data-fancybox="house-people_3"></a>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/standart_3/2.jpg" data-fancybox="house-standart_3" data-thumb="img/houses/standart_3/2.jpg"></a> -->
						</div>

						<div class="text">
							<h2>Дом 8х9</h2>
							<h3>Общая площадь = 150,19 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Коттедж для тех, кто ценит простоту и практичность. Архитектура дома - без лишних деталей. Жители коттеджа “Народный” получат ощущение теплоты, комфорта и защищености на долгие годы.</p>
							<h2>Стоимость: 5.25 <small>млн. ₽</small></h2>
						</div>
					</div>


					<!-- <div class="tab-content" data-tab="premium">

						<div class="name-image">
							<h3>Народный дом</h3>
							<a href="<?php// echo $template_url; ?>/img/houses/people_4/scheme.jpg" class="image fancybox" style="background: url(<?php// echo $template_url; ?>/img/houses/people_4/sm.jpg) center; background-size: cover;" data-fancybox="house-people_4"></a>
						</div>

						<div class="d-none">
							<a class="image fancybox" href="img/houses/standart_3/2.jpg" data-fancybox="house-standart_3" data-thumb="img/houses/standart_3/2.jpg"></a>
						</div>

						<div class="text">
							<h2>Дом 8х10</h2>
							<h3>Общая площадь = 169 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Коттедж для тех, кто ценит простоту и практичность. Архитектура дома - без лишних деталей. Жители коттеджа “Народный” получат ощущение теплоты, комфорта и защищености на долгие годыю</p>
							<h2>Стоимость: 6.35 <small>млн. ₽</small></h2>
						</div>

					</div> -->

				</div>

				<div class="tab-btns">
					<button class="tab-btn active" data-tab="small">6х6</button>
					<button class="tab-btn" data-tab="medium">9х6</button>
					<button class="tab-btn" data-tab="big">8х9</button>
					<!-- <button class="tab-btn" data-tab="premium">8х10</button> -->
				</div>

			</div>

		</div>

	</section>

























	<section class="houses-section" id="our-homes">
		<div class="container">

			<div class="tabs houses reverse">

				<div class="tab-contents">

					<div class="tab-content active" data-tab="small">
						<div class="text">
							<h2>ДОМ 6х6</h2>
							<h3>Общая площадь = 90,04 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 4.43 <small>млн. ₽</small></h2>
						</div>

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_1/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_1/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_1"></a>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_1/2.jpg" data-fancybox="house-classic_1" data-thumb="img/houses/classic_1/2.jpg"></a> -->
						</div>

					</div>

					<div class="tab-content" data-tab="medium">

						<div class="text">
							<h2>ДОМ 9х6</h2>
							<h3>Общая площадь = 120,54 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 5.03 <small>млн. ₽</small></h2>
						</div>

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_2/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_2/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_2"></a>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_2/2.jpg" data-fancybox="house-classic_2" data-thumb="img/houses/classic_2/2.jpg"></a> -->
						</div>

					</div>

					<div class="tab-content" data-tab="big">

						<div class="text">
							<h2>ДОМ 8х9</h2>
							<h3>Общая площадь = 150,19 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 5.65 <small>млн. ₽</small></h2>
						</div>

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_3/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_3/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_3"></a>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_3/2.jpg" data-fancybox="house-classic_3" data-thumb="img/houses/classic_2/2.jpg"></a> -->
						</div>

					</div>

					<!-- <div class="tab-content" data-tab="premium">

						<div class="text">
							<h2>ДОМ 8х10</h2>
							<h3>Общая площадь = 169,15 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 6.81 <small>млн. ₽</small></h2>
						</div>

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php// echo $template_url; ?>/img/houses/classic_4/scheme.jpg" class="image fancybox" style="background: url(<?php// echo $template_url; ?>/img/houses/classic_4/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_4"></a>
						</div>

						<div class="d-none">
							<a class="image fancybox" href="img/houses/classic_3/2.jpg" data-fancybox="house-classic_3" data-thumb="img/houses/classic_2/2.jpg"></a>
						</div>

					</div> -->

				</div>

				<div class="tab-btns">
					<button class="tab-btn active" data-tab="small">6х6</button>
					<button class="tab-btn" data-tab="medium">9х6</button>
					<button class="tab-btn" data-tab="big">8х9</button>
					<!-- <button class="tab-btn" data-tab="premium">8х10</button> -->
				</div>

			</div>









			<div class="tabs houses reverse-sm">
				<div class="tab-contents">

					<div class="tab-content active" data-tab="small">

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_1/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_1/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_1_sm"></a>
						</div>

						<div class="text">
							<h2>ДОМ 6х8</h2>
							<h3>Общая площадь = 90,04 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 4.43 <small>млн. ₽</small></h2>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_1/2.jpg" data-fancybox="house-classic_1_sm" data-thumb="img/houses/classic_1/2.jpg"></a> -->
						</div>

					</div>

					<div class="tab-content" data-tab="medium">

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_2/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_2/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_2_sm"></a>
						</div>

						<div class="text">
							<h2>ДОМ 8х8</h2>
							<h3>Общая площадь = 120,54 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 5.03 <small>млн. ₽</small></h2>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_2/2.jpg" data-fancybox="house-classic_2" data-thumb="img/houses/classic_2/2.jpg"></a> -->
						</div>

					</div>

					<div class="tab-content" data-tab="big">

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php echo $template_url; ?>/img/houses/classic_3/scheme.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_3/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_3_sm"></a>
						</div>

						<div class="text">
							<h2>ДОМ 8х10</h2>
							<h3>Общая площадь = 150,19 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 5.65 <small>млн. ₽</small></h2>
						</div>

						<div class="d-none">
							<!-- <a class="image fancybox" href="img/houses/classic_3/2.jpg" data-fancybox="house-classic_3" data-thumb="img/houses/classic_2/2.jpg"></a> -->
						</div>

					</div>

					<!-- <div class="tab-content" data-tab="premium">

						<div class="name-image">
							<h3>Классика</h3>
							<a href="<?php// echo $template_url; ?>/img/houses/classic_4/scheme.jpg" class="image fancybox" style="background: url(<?php// echo $template_url; ?>/img/houses/classic_4/sm.jpg) center; background-size: cover;" data-fancybox="house-classic_4_sm"></a>
						</div>

						<div class="text">
							<h2>ДОМ 8х10</h2>
							<h3>Общая площадь = 169,15 м<sup><small>2</small></sup></h3>
							<ul>
								<li>Каменный надежный дом</li>
								<li>Центральная вода</li>
								<li>Шамбо 10 м<sup><small>3</small></sup></li>
								<li>Кровля четырехскатная, стропильная система + металлочерепица</li>
								<li>Лестница межэтажная деревянная</li>
								<li>Окна ПВХ, входная утепленная дверь</li>
								<li>Фасадное покрытие Терракот стандарт</li>
								<li>Стояки холодного водоснабжения и канализации</li>
								<li>Подключение к сетям вентиляции</li>
								<li>Крыльцо</li>
								<li>Два балкона</li>
								<li>Внутренняя отделка: заделка стеновых швов штукатуркой, стяжка пола</li>
								<li>Земельный участок <br>в собственности - 10 соток</li>
								<li>Закрытая огороженная территория <br>(общий забор)</li>
								<li>Гарантия 50 лет!</li>
							</ul>
							<p>Двухэтажный коттедж для тех, кто выбирает старую добрую классику. Объемные колонны, шикарные балконы, оформленные художественной ковкой. Для многих мечта всей жизни - создание родового гнезда. Коттедж “Классика” - место, где будут жить поколения вашей семьи. <br>Жить и гордиться своим домом.</p>
							<h2>Стоимость: 6.81 <small>млн. ₽</small></h2>
						</div>

						<div class="d-none">
							<a class="image fancybox" href="img/houses/classic_3/2.jpg" data-fancybox="house-classic_3" data-thumb="img/houses/classic_2/2.jpg"></a>
						</div>

					</div> -->

				</div>

				<div class="tab-btns">
					<button class="tab-btn active" data-tab="small">6х6</button>
					<button class="tab-btn" data-tab="medium">9х6</button>
					<button class="tab-btn" data-tab="big">8х9</button>
					<!-- <button class="tab-btn" data-tab="premium">8х10</button> -->
				</div>

			</div>


		</div>

	</section>


















<div class="map-section" id="map-section">
	<div class="container">
		<h2 class="type-head">Расположение</h2>
	</div>
	<div id="map" style="width:100%; height:450px"></div>
</div>



<section class="technology-section">
	<div class="container">
		<h2>Технология</h2>

		<div class="video-block">
			<div class="imacWrapper">
				<img class="img-responsive" src="<?php echo $template_url; ?>/img/mac.png" alt="iMac">
			</div>
			<div class="videoWrapper">
				<iframe src="https://www.youtube.com/embed/OfvZIRqvawY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>
		</div>

		<div class="text">
			<p><span><b>Мы сделали коттеджное строительство доступным!</b></span></p>
			<p>Мы производим домокомплекты из трехслойных стеновых железобетонных панелей, колонн и ригелей.</p>
			<p>Каркас нашего дома – железобетонные колонны и ригели.</p>
			<p>Наша панель — как сэндвич, она состоит из нескольких слоев: облицовка- железобетон, высокоэффективный утеплитель и снова железобетон. Слои связаны между собой арматурой. Наружный слой изготавливаем с поверхностью под покраску, а внутреннюю поверхность делаем гладкой, под оклейку обоями.</p>
			<p>Перекрытия в нашем доме – также из трехслойных панелей: ребристая плита, утеплитель, бетонная стяжка.</p>
			<p><b>Одно из главных преимуществ нашей технологии — скорость и объем производимых домов.</b></p>
			<p>Мощность завода домокомплектов «КПД 100» - порядка 7-10 домов в месяц.</p>
			<p><span><b>Наша технология основана на советских ГОСТах и современных финских решениях.</b></span></p>
			<p>Все знают панельные дома, их плюсы и минусы:</p>

			<div class="lists">
				<div class="list">
					<p><b>Плюсы:</b></p>
					<ul>
						<li>Скорость строительства</li>
						<li>Цена</li>
					</ul>
				</div>
				<div class="list">
					<p><b>Минусы:</b></p>
					<ul>
						<li>Типовые планировки</li>
						<li>низкие потолки – до 2,5м</li>
						<li>низкая шумоизоляция</li>
						<li>широкие некрасивые швы между панелями</li>
						<li>скучные однотипные фасады</li>
					</ul>
				</div>
			</div>

			<p>Все минусы панельных многоквартирных домов обусловлены тем, что в старых панельных домах панели – самонесущие, то есть сами себя несут.</p>
			<p><span><b>В нашей технологии несущую функцию мы перенесли на железобетонную раму, состоящую из колонн и ригелей.</b></span> Это позволяет нам делать потолки в доме любой высоты и делать свободные планировки.<br><br>По такому же принципу ведется строительство монолитных многоквартирных домов – сначала делают монолитный каркас, который затем заполняют блоками или кирпичом.<br><br><span><b>Кроме изменения несущей функции мы улучшили технологию и самих панелей:</b></span></p>
			<ul>
				<li>Сделали панели горизонтальными и длинными – до 6м, благодаря чему уменьшилось количество швов</li>
				<li>Наши панели идеальной геометрии – благодаря нашему новейшему оборудованию</li>
				<li>Между нашими панелями швы минимальны – до 2см, которые мы дополнительно закрываем декоративными планками, тем самым мы улучшили теплоизоляцию</li>
				<li>Монтаж утеплителя внутри панели производится на заводе, что исключает «пустоты», как при утеплении дома «по- старинке» на земельном участке.</li>
				<li>Наши перекрытия – уникальны для России, они имеют сразу 3 слоя: ребристая плита, высокоэффективный утеплителя и бетонная стяжка.</li>
				<li>В коттеджах нет соседей – поэтому вопрос о шумоизоляции не стоит</li>
			</ul>
		</div>

		<a href="<?php echo $template_url; ?>/img/techmology.jpg" class="technology-image image zoom-img" data-fancybox>
			<img src="<?php echo $template_url; ?>/img/techmology.jpg" alt="technology" class="img-responsive">
		</a>

	</div>
</section>



<section class="certificates-section">
	<div class="container">
		<h2>Сертификаты</h2>

		<div class="certificates-slider">

			<a href="<?php echo $template_url; ?>/img/certificates/1.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/1.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/2.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/2.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/3.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/3.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/4.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/4.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/5.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/5.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/6.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/6.jpg" alt="certificate" class="img-responsive">
			</a>

		</div>

	</div>
</section>



<a href="#take-information" class="sticky-button open-form-button">
	<div class="circle-phone">
		<svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M0.864895 8.86842C2.80412 5.0745 5.67817 1.80212 8.42689 0.915413C9.05539 0.712669 9.7639 0.623007 10.3323 0.959222C12.5655 2.28022 17.6088 7.79563 19.0253 11.7192C19.2985 12.4758 19.2588 13.329 18.7978 13.9882C16.9842 16.5815 12.5598 16.8892 11.8876 19.211C11.4565 20.7002 20.3492 33.2349 26.9182 35.9267C28.0508 36.3908 29.3503 36.0486 30.0584 35.0502C31.4105 33.144 31.9838 30.5843 34.3778 29.2002C34.9181 28.8878 35.5416 28.8599 36.1005 29.1378C38.3629 30.2625 44.196 33.9368 46.5703 37.3279C47.158 38.1673 47.2314 39.2468 46.8049 40.1784C45.8376 42.291 43.7893 45.0211 40.8356 46.8208C40.2852 47.1562 39.6545 47.3417 39.01 47.3321C33.679 47.253 22.0779 43.4579 13.4006 34.7793C5.07941 25.852 -0.470642 11.4813 0.864895 8.86842Z" fill="#6DB925"/></svg>
	</div>
	<div class="circle first"></div>
	<div class="circle second"></div>
</a>



<?php get_footer(); ?>