<?php
if (!defined('ABSPATH')) {
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
			<a href="<?php echo $template_url; ?>/img/about-img.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/about-img_sm.jpg) center; background-size: cover;"></a>
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
		<div class="button-container">
			<a href="#take-booking" class="top-button ripplelink open-form-button"><span>Забронировать участок</span></a>
		</div>
		<h3 class="type-head">Выбирайте коттедж своей мечты!</h3>
		<p>Колосальный опыт строительства позволил нам создать совершенные дома, в которых хочется жить.</p>
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
						<h3>Одноэтажный дом</h3>
						<a href="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/sm.jpg) center; background-size: cover;" data-fancybox="house-1_4th_roof"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/2.jpg" data-fancybox="house-1_4th_roof" data-thumb="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/3.jpg" data-fancybox="house-1_4th_roof" data-thumb="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/4.jpg" data-fancybox="house-1_4th_roof" data-thumb="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/scheme.jpg" data-fancybox="house-1_4th_roof" data-thumb="<?php echo $template_url; ?>/img/houses/single_lvl/1_4th_roof/scheme.jpg"></a>
						</div>
					</div>

					<div class="text">
						<h2>Каменный дом 82,33 м<sup><small>2</small></sup><br> с четырехскатной кровлей</h2>
						<h4>Наполнение дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; Ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля -  четырехскатная, устройство рулонной кровли</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Внутренняя отделка: <span>чистовая отделка</span>, шпатлевка внешних стен</li>
							<li>Крыльцо - ковка</li>
							<li>Вентиляция</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 4.85 <small>млн. ₽</small></h2>
					</div>

				</div>


				<div class="tab-content" data-tab="medium">

					<div class="name-image">
						<h3>Одноэтажный дом</h3>
						<a href="<?php echo $template_url; ?>/img/houses/single_lvl/2_4th_roof/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/single_lvl/2_4th_roof/sm.jpg) center; background-size: cover;" data-fancybox="house-2_4th_roof"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/single_lvl/2_4th_roof/scheme.jpg" data-fancybox="house-2_4th_roof" data-thumb="<?php echo $template_url; ?>/img/houses/single_lvl/2_4th_roof/scheme.jpg"></a>
						</div>
					</div>

					<div class="text">
						<h2>Каменный дом 122,16 м<sup><small>2</small></sup><br> с четырехскатной кровлей</h2>
						<h4>Наполнение дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; Ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля -  четырехскатная, устройство рулонной кровли</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Внутренняя отделка: <span>чистовая отделка</span>, шпатлевка внешних стен</li>
							<li>Крыльцо - ковка</li>
							<li>Вентиляция</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 5.60 <small>млн. ₽</small></h2>
					</div>

				</div>

			</div>

			<div class="tab-btns">
				<button class="tab-btn active" data-tab="small">6х6</button>
				<button class="tab-btn" data-tab="medium">9х6</button>
			</div>

		</div>

	</div>

</section>








<section class="houses-section">
	<div class="container">

		<div class="tabs houses reverse">

			<div class="tab-contents">

				<div class="tab-content active" data-tab="small">
					<div class="text">
						<h2>Каменный дом 90,04 м<sup><small>2</small></sup><br> с односкатной кровлей</h2>
						<h4>Наполнение Народного дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; межэтажное бетонное перекрытие, ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля - односкатная под уклоном, устройство рулонной кровли</li>
							<li>Лестница межэтажная деревянная с состариванием и шлифованием</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Внутренняя отделка: чистовая отделка, шпатлевка внешних стен</li>
							<li>Вентиляция</li>
							<li>Крыльцо, балконы с ограждением - ковка</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 4.20 <small>млн. ₽</small></h2>
					</div>

					<div class="name-image">
						<h3>Народный дом</h3>
						<a href="<?php echo $template_url; ?>/img/houses/people_1/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/people_1/sm.jpg) center; background-size: cover;" data-fancybox="house-people_1"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/2.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/3.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/4.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/5.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_1/scheme.jpg" data-fancybox="house-people_1" data-thumb="<?php echo $template_url; ?>/img/houses/people_1/scheme.jpg"></a>
						</div>
					</div>

				</div>

				<div class="tab-content" data-tab="medium">

					<div class="text">
						<h2>Каменный дом 120,54 м<sup><small>2</small></sup><br> с односкатной кровлей</h2>
						<h4>Наполнение Народного дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; межэтажное бетонное перекрытие, ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля - односкатная под уклоном, устройство рулонной кровли</li>
							<li>Лестница межэтажная деревянная с состариванием и шлифованием</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Внутренняя отделка: чистовая отделка, шпатлевка внешних стен</li>
							<li>Вентиляция</li>
							<li>Крыльцо, балконы с ограждением - ковка</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 4.80 <small>млн. ₽</small></h2>
					</div>

					<div class="name-image">
						<h3>Народный дом</h3>
						<a href="<?php echo $template_url; ?>/img/houses/people_2/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/people_2/sm.jpg) center; background-size: cover;" data-fancybox="house-people_2"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_2/2.jpg" data-fancybox="house-people_2" data-thumb="<?php echo $template_url; ?>/img/houses/people_2/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_2/3.jpg" data-fancybox="house-people_2" data-thumb="<?php echo $template_url; ?>/img/houses/people_2/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_2/4.jpg" data-fancybox="house-people_2" data-thumb="<?php echo $template_url; ?>/img/houses/people_2/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_2/5.jpg" data-fancybox="house-people_2" data-thumb="<?php echo $template_url; ?>/img/houses/people_2/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/people_2/scheme.jpg" data-fancybox="house-people_2" data-thumb="<?php echo $template_url; ?>/img/houses/people_2/scheme.jpg"></a>
						</div>
					</div>

				</div>

			</div>

			<div class="tab-btns">
				<button class="tab-btn active" data-tab="small">6х6</button>
				<button class="tab-btn" data-tab="medium">9х6</button>
			</div>

		</div>


	</div>

</section>
















<section class="houses-section">
	<div class="container">

		<div class="tabs houses">

			<div class="tab-contents">

				<div class="tab-content active" data-tab="small">

					<div class="name-image">
						<h3>Народный дом "Классика"</h3>
						<a href="<?php echo $template_url; ?>/img/houses/classic_1/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_1/sm.jpg?v=1.1) center; background-size: cover;" data-fancybox="house-classic_1"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_1/2.jpg" data-fancybox="house-classic_1" data-thumb="<?php echo $template_url; ?>/img/houses/classic_1/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_1/3.jpg" data-fancybox="house-classic_1" data-thumb="<?php echo $template_url; ?>/img/houses/classic_1/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_1/4.jpg" data-fancybox="house-classic_1" data-thumb="<?php echo $template_url; ?>/img/houses/classic_1/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_1/5.jpg" data-fancybox="house-classic_1" data-thumb="<?php echo $template_url; ?>/img/houses/classic_1/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_1/scheme.jpg" data-fancybox="house-classic_1" data-thumb="<?php echo $template_url; ?>/img/houses/classic_1/scheme.jpg"></a>
						</div>
					</div>

					<div class="text">
						<h2>Каменный надежный дом 90,04 м<sup><small>2</small></sup></h2>
						<h4>Наполнение Народного дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; межэтажное бетонное перекрытие, ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля - стропильная система, четырехскатная холодная кровля с водосточной системой и подшивкой софитами</li>
							<li>Лестница межэтажная деревянная с состариванием и шлифованием</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Вентиляция</li>
							<li>Крыльцо,  балконы с ограждением - ковка</li>
							<li>Внутренняя отделка: <span>чистовая отделка</span>, шпатлевка внешних стен</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 4.60 <small>млн. ₽</small></h2>
					</div>

				</div>

				<div class="tab-content" data-tab="medium">

					<div class="name-image">
						<h3>Народный дом "Классика"</h3>
						<a href="<?php echo $template_url; ?>/img/houses/classic_2/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_2/sm.jpg?v=1.1) center; background-size: cover;" data-fancybox="house-classic_2"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_2/2.jpg" data-fancybox="house-classic_2" data-thumb="<?php echo $template_url; ?>/img/houses/classic_2/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_2/3.jpg" data-fancybox="house-classic_2" data-thumb="<?php echo $template_url; ?>/img/houses/classic_2/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_2/4.jpg" data-fancybox="house-classic_2" data-thumb="<?php echo $template_url; ?>/img/houses/classic_2/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_2/5.jpg" data-fancybox="house-classic_2" data-thumb="<?php echo $template_url; ?>/img/houses/classic_2/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_2/scheme.jpg" data-fancybox="house-classic_2" data-thumb="<?php echo $template_url; ?>/img/houses/classic_2/scheme.jpg"></a>
						</div>
					</div>

					<div class="text">
						<h2>Каменный надежный дом 120,54 м<sup><small>2</small></sup></h2>
						<h4>Наполнение Народного дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; межэтажное бетонное перекрытие, ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля - стропильная система, четырехскатная холодная кровля с водосточной системой и подшивкой софитами</li>
							<li>Лестница межэтажная деревянная с состариванием и шлифованием</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Вентиляция</li>
							<li>Крыльцо,  балконы с ограждением - ковка</li>
							<li>Внутренняя отделка: <span>чистовая отделка</span>, шпатлевка внешних стен</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 5.25 <small>млн. ₽</small></h2>
					</div>

				</div>

				<div class="tab-content" data-tab="big">

					<div class="name-image">
						<h3>Народный дом "Классика"</h3>
						<a href="<?php echo $template_url; ?>/img/houses/classic_3/1.jpg" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/houses/classic_3/sm.jpg?v=1.1) center; background-size: cover;" data-fancybox="house-classic_3"></a>
						<div class="d-none">
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/2.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/2.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/3.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/3.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/4.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/4.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/5.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/5.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/6.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/6.jpg"></a>
							<a class="image fancybox" href="<?php echo $template_url; ?>/img/houses/classic_3/scheme.jpg" data-fancybox="house-classic_3" data-thumb="<?php echo $template_url; ?>/img/houses/classic_3/scheme.jpg"></a>
						</div>
					</div>

					<div class="text">
						<h2>Каменный надежный дом 150,19 м<sup><small>2</small></sup></h2>
						<h4>Наполнение Народного дома:</h4>
						<ul>
							<li>Фундамент буронабивной от 3 до 4м глубиной</li>
							<li>Фасад - под каменные блоки, окрас в цвет - на выбор клиента</li>
							<li>Трехслойные стеновые панели с утеплением: внешний фасад - бетон 6см + утеплитель 15см + бетон 8 см</li>
							<li>Перекрытия: ребристые ж/б плиты с утеплением на 1 этаже + бетон; межэтажное бетонное перекрытие, ребристые ж/б плиты перекрытия с утеплением на кровле</li>
							<li>Кровля - стропильная система, четырехскатная холодная кровля с водосточной системой и подшивкой софитами</li>
							<li>Лестница межэтажная деревянная с состариванием и шлифованием</li>
							<li>Окна ПВХ, входная утепленная дверь</li>
							<li>Разводка стояков водоснабжения и канализации по дому</li>
							<li>Вентиляция</li>
							<li>Крыльцо,  балконы с ограждением - ковка</li>
							<li>Внутренняя отделка: <span>чистовая отделка</span>, шпатлевка внешних стен</li>
						</ul>
						<h4>Инженерные Сети:</h4>
						<ul>
							<li>Центральная вода</li>
							<li>Шамбо - 10 м<sup><small>3</small></sup></li>
							<li>Отопление - электрические радиаторы</li>
						</ul>
						<h4>Благоустройство:</h4>
						<ul>
							<li>Земельный участок в собственности <br>от 10 соток</li>
							<li>Закрытая огороженная территория <br>(общий забор)</li>
							<li>Дорога внутриквартальная</li>
							<li>Освещение поселка</li>
						</ul>
						<h2>Стоимость: 5.94 <small>млн. ₽</small></h2>
					</div>

				</div>

			</div>

			<div class="tab-btns">
				<button class="tab-btn active" data-tab="small">6х6</button>
				<button class="tab-btn" data-tab="medium">9х6</button>
				<button class="tab-btn" data-tab="big">8х9</button>
			</div>

		</div>

	</div>

</section>












<div class="progress-section" id="progress-section">
	<div class="container">
		<h2 class="type-head">Ход строительства</h2>
		<h3>Дом двухэтажный, 111,91м<sup><small>2</small></sup> с террасой, балконом и четырехскатной кровлей</h3>
		<div class="gallery">

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/1.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/1.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/1.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/2.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/2.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/2.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/3.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/3.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/3.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/4.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/4.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/4.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/5.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/5.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/5.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/7_topolevo_1/6.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/6.jpg?v=1.1) center; background-size: cover;" data-fancybox="7_topolevo_1" data-thumb="<?php echo $template_url; ?>/img/process/7_topolevo_1/sm/6.jpg?v=1.1"></a>

		</div>

		<h3>Дом двухэтажный 120,54м<sup><small>2</small></sup> "Классика", с четырехскатной кровлей, с балконами</h3>
		<div class="gallery">

			<a href="<?php echo $template_url; ?>/img/process/12_semeiniy_1/1.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/1.jpg?v=1.1) center; background-size: cover;" data-fancybox="12_semeiniy_1" data-thumb="<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/1.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/12_semeiniy_1/2.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/2.jpg?v=1.1) center; background-size: cover;" data-fancybox="12_semeiniy_1" data-thumb="<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/2.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/12_semeiniy_1/3.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/3.jpg?v=1.1) center; background-size: cover;" data-fancybox="12_semeiniy_1" data-thumb="<?php echo $template_url; ?>/img/process/12_semeiniy_1/sm/3.jpg?v=1.1"></a>

		</div>

		<h3>Дом двухэтажный 106,59м<sup><small>2</small></sup> с четырехскатной кровлей, с балконами и навесом</h3>
		<div class="gallery">

			<a href="<?php echo $template_url; ?>/img/process/15_semeiniy_2/1.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/1.jpg?v=1.1) center; background-size: cover;" data-fancybox="15_semeiniy_2" data-thumb="<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/1.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/15_semeiniy_2/2.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/2.jpg?v=1.1) center; background-size: cover;" data-fancybox="15_semeiniy_2" data-thumb="<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/2.jpg?v=1.1"></a>

			<a href="<?php echo $template_url; ?>/img/process/15_semeiniy_2/3.jpg?v=1.1" class="image fancybox" style="background: url(<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/3.jpg?v=1.1) center; background-size: cover;" data-fancybox="15_semeiniy_2" data-thumb="<?php echo $template_url; ?>/img/process/15_semeiniy_2/sm/3.jpg?v=1.1"></a>

		</div>

	</div>
</div>



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
				<li>Наши перекрытия – уникальны для России, они имеют сразу 3 слоя: ребристая плита, высокоэффективный утеплитель и бетонная стяжка.</li>
				<li>В коттеджах нет соседей – поэтому вопрос о шумоизоляции не стоит</li>
			</ul>
		</div>

		<div class="technology-images">
			<a href="<?php echo $template_url; ?>/img/technology-people-big.jpg?v=1.1" class="technology-image image" data-fancybox>
				<img src="<?php echo $template_url; ?>/img/technology-people-small.jpg?v=1.1" alt="technology" class="img-responsive">
			</a>
			<a href="<?php echo $template_url; ?>/img/technology-classic-big.jpg?v=1.1" class="technology-image image" data-fancybox>
				<img src="<?php echo $template_url; ?>/img/technology-classic-small.jpg?v=1.1" alt="technology" class="img-responsive">
			</a>
		</div>

	</div>
</section>



<section class="certificates-section">
	<div class="container">
		<h2>Сертификаты</h2>

		<div class="certificates-slider">

			<a href="<?php echo $template_url; ?>/img/certificates/1.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/1_sm.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/2.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/2_sm.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/3.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/3_sm.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/4.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/4_sm.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/5.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/5_sm.jpg" alt="certificate" class="img-responsive">
			</a>

			<a href="<?php echo $template_url; ?>/img/certificates/6.jpg" class="certificate zoom-img" data-fancybox="certificates">
				<img src="<?php echo $template_url; ?>/img/certificates/6_sm.jpg" alt="certificate" class="img-responsive">
			</a>

		</div>

	</div>
</section>



<a href="#take-information" class="sticky-button open-form-button">
	<div class="circle-phone">
		<svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M0.864895 8.86842C2.80412 5.0745 5.67817 1.80212 8.42689 0.915413C9.05539 0.712669 9.7639 0.623007 10.3323 0.959222C12.5655 2.28022 17.6088 7.79563 19.0253 11.7192C19.2985 12.4758 19.2588 13.329 18.7978 13.9882C16.9842 16.5815 12.5598 16.8892 11.8876 19.211C11.4565 20.7002 20.3492 33.2349 26.9182 35.9267C28.0508 36.3908 29.3503 36.0486 30.0584 35.0502C31.4105 33.144 31.9838 30.5843 34.3778 29.2002C34.9181 28.8878 35.5416 28.8599 36.1005 29.1378C38.3629 30.2625 44.196 33.9368 46.5703 37.3279C47.158 38.1673 47.2314 39.2468 46.8049 40.1784C45.8376 42.291 43.7893 45.0211 40.8356 46.8208C40.2852 47.1562 39.6545 47.3417 39.01 47.3321C33.679 47.253 22.0779 43.4579 13.4006 34.7793C5.07941 25.852 -0.470642 11.4813 0.864895 8.86842Z" fill="#6DB925" /></svg>
	</div>
	<div class="circle first"></div>
	<div class="circle second"></div>
</a>



<?php get_footer(); ?>