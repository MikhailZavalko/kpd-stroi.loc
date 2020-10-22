<?php
/**
 * Twenty Seventeen functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */

/**
 * Twenty Seventeen only works in WordPress 4.7 or later.
 */

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function twentyseventeen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentyseventeen
	 * If you're building a theme based on Twenty Seventeen, use a find and replace
	 * to change 'twentyseventeen' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'twentyseventeen' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	add_image_size( 'twentyseventeen-featured-image', 2000, 1200, true );

	add_image_size( 'twentyseventeen-thumbnail-avatar', 100, 100, true );

	// Set the default content width.
	$GLOBALS['content_width'] = 525;

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'top'    => __( 'Top Menu', 'twentyseventeen' ),
		'social' => __( 'Social Links Menu', 'twentyseventeen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	add_editor_style( array( 'assets/css/editor-style.css', twentyseventeen_fonts_url() ) );

	// Define and register starter content to showcase the theme on new sites.
	$starter_content = array(
		'widgets' => array(
			// Place three core-defined widgets in the sidebar area.
			'sidebar-1' => array(
				'text_business_info',
				'search',
				'text_about',
			),

			// Add the core-defined business info widget to the footer 1 area.
			'sidebar-2' => array(
				'text_business_info',
			),

			// Put two core-defined widgets in the footer 2 area.
			'sidebar-3' => array(
				'text_about',
				'search',
			),
		),

		// Specify the core-defined pages to create and add custom thumbnails to some of them.
		'posts' => array(
			'home',
			'about' => array(
				'thumbnail' => '{{image-sandwich}}',
			),
			'contact' => array(
				'thumbnail' => '{{image-espresso}}',
			),
			'blog' => array(
				'thumbnail' => '{{image-coffee}}',
			),
			'homepage-section' => array(
				'thumbnail' => '{{image-espresso}}',
			),
		),

		// Create the custom image attachments used as post thumbnails for pages.
		'attachments' => array(
			'image-espresso' => array(
				'post_title' => _x( 'Espresso', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/espresso.jpg', // URL relative to the template directory.
			),
			'image-sandwich' => array(
				'post_title' => _x( 'Sandwich', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/sandwich.jpg',
			),
			'image-coffee' => array(
				'post_title' => _x( 'Coffee', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/coffee.jpg',
			),
		),

		// Default to a static front page and assign the front and posts pages.
		'options' => array(
			'show_on_front' => 'page',
			'page_on_front' => '{{home}}',
			'page_for_posts' => '{{blog}}',
		),

		// Set the front page section theme mods to the IDs of the core-registered pages.
		'theme_mods' => array(
			'panel_1' => '{{homepage-section}}',
			'panel_2' => '{{about}}',
			'panel_3' => '{{blog}}',
			'panel_4' => '{{contact}}',
		),

		// Set up nav menus for each of the two areas registered in the theme.
		'nav_menus' => array(
			// Assign a menu to the "top" location.
			'top' => array(
				'name' => __( 'Top Menu', 'twentyseventeen' ),
				'items' => array(
					'link_home', // Note that the core "home" page is actually a link in case a static front page is not used.
					'page_about',
					'page_blog',
					'page_contact',
				),
			),

			// Assign a menu to the "social" location.
			'social' => array(
				'name' => __( 'Social Links Menu', 'twentyseventeen' ),
				'items' => array(
					'link_yelp',
					'link_facebook',
					'link_twitter',
					'link_instagram',
					'link_email',
				),
			),
		),
	);

	/**
	 * Filters Twenty Seventeen array of starter content.
	 *
	 * @since Twenty Seventeen 1.1
	 *
	 * @param array $starter_content Array of starter content.
	 */
	$starter_content = apply_filters( 'twentyseventeen_starter_content', $starter_content );

	add_theme_support( 'starter-content', $starter_content );
}
add_action( 'after_setup_theme', 'twentyseventeen_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function twentyseventeen_content_width() {

	$content_width = $GLOBALS['content_width'];

	// Get layout.
	$page_layout = get_theme_mod( 'page_layout' );

	// Check if layout is one column.
	if ( 'one-column' === $page_layout ) {
		if ( twentyseventeen_is_frontpage() ) {
			$content_width = 644;
		} elseif ( is_page() ) {
			$content_width = 740;
		}
	}

	// Check if is single post and there is no sidebar.
	if ( is_single() && ! is_active_sidebar( 'sidebar-1' ) ) {
		$content_width = 740;
	}

	/**
	 * Filter Twenty Seventeen content width of the theme.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param int $content_width Content width in pixels.
	 */
	$GLOBALS['content_width'] = apply_filters( 'twentyseventeen_content_width', $content_width );
}
add_action( 'template_redirect', 'twentyseventeen_content_width', 0 );

/**
 * Register custom fonts.
 */
function twentyseventeen_fonts_url() {
	$fonts_url = '';

	/*
	 * Translators: If there are characters in your language that are not
	 * supported by Libre Franklin, translate this to 'off'. Do not translate
	 * into your own language.
	 */
	$libre_franklin = _x( 'on', 'Libre Franklin font: on or off', 'twentyseventeen' );

	if ( 'off' !== $libre_franklin ) {
		$font_families = array();

		$font_families[] = 'Libre Franklin:300,300i,400,400i,600,600i,800,800i';

		$query_args = array(
			'family' => urlencode( implode( '|', $font_families ) ),
			'subset' => urlencode( 'latin,latin-ext' ),
		);

		$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );
	}

	return esc_url_raw( $fonts_url );
}

/**
 * Add preconnect for Google Fonts.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array  $urls           URLs to print for resource hints.
 * @param string $relation_type  The relation type the URLs are printed.
 * @return array $urls           URLs to print for resource hints.
 */
function twentyseventeen_resource_hints( $urls, $relation_type ) {
	if ( wp_style_is( 'twentyseventeen-fonts', 'queue' ) && 'preconnect' === $relation_type ) {
		$urls[] = array(
			'href' => 'https://fonts.gstatic.com',
			'crossorigin',
		);
	}

	return $urls;
}
add_filter( 'wp_resource_hints', 'twentyseventeen_resource_hints', 10, 2 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function twentyseventeen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Blog Sidebar', 'twentyseventeen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on blog posts and archive pages.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 1', 'twentyseventeen' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 2', 'twentyseventeen' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentyseventeen_widgets_init' );

/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $link Link to single post/page.
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function twentyseventeen_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}

	$link = sprintf( '<p class="link-more"><a href="%1$s" class="more-link">%2$s</a></p>',
		esc_url( get_permalink( get_the_ID() ) ),
		/* translators: %s: Name of current post */
		sprintf( __( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ), get_the_title( get_the_ID() ) )
	);
	return ' &hellip; ' . $link;
}
add_filter( 'excerpt_more', 'twentyseventeen_excerpt_more' );

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Seventeen 1.0
 */
function twentyseventeen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'twentyseventeen_javascript_detection', 0 );

/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function twentyseventeen_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">' . "\n", get_bloginfo( 'pingback_url' ) );
	}
}
add_action( 'wp_head', 'twentyseventeen_pingback_header' );

/**
 * Display custom color CSS.
 */
function twentyseventeen_colors_css_wrap() {
	if ( 'custom' !== get_theme_mod( 'colorscheme' ) && ! is_customize_preview() ) {
		return;
	}

	require_once( get_parent_theme_file_path( '/inc/color-patterns.php' ) );
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );
	?>
	<style type="text/css" id="custom-theme-colors" <?php if ( is_customize_preview() ) { echo 'data-hue="' . $hue . '"'; } ?>>
	<?php echo twentyseventeen_custom_colors_css(); ?>
</style>
<?php }
add_action( 'wp_head', 'twentyseventeen_colors_css_wrap' );

/**
 * Enqueue scripts and styles.
 */
function twentyseventeen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentyseventeen-fonts', twentyseventeen_fonts_url(), array(), null );

	// Theme stylesheet.
	wp_enqueue_style( 'twentyseventeen-style', get_stylesheet_uri() );

	// Load the dark colorscheme.
	if ( 'dark' === get_theme_mod( 'colorscheme', 'light' ) || is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-colors-dark', get_theme_file_uri( '/assets/css/colors-dark.css' ), array( 'twentyseventeen-style' ), '1.0' );
	}

	// Load the Internet Explorer 9 specific stylesheet, to fix display issues in the Customizer.
	if ( is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-ie9', get_theme_file_uri( '/assets/css/ie9.css' ), array( 'twentyseventeen-style' ), '1.0' );
		wp_style_add_data( 'twentyseventeen-ie9', 'conditional', 'IE 9' );
	}

	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentyseventeen-ie8', get_theme_file_uri( '/assets/css/ie8.css' ), array( 'twentyseventeen-style' ), '1.0' );
	wp_style_add_data( 'twentyseventeen-ie8', 'conditional', 'lt IE 9' );

	// Load the html5 shiv.
	wp_enqueue_script( 'html5', get_theme_file_uri( '/assets/js/html5.js' ), array(), '3.7.3' );
	wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

	// wp_enqueue_script( 'twentyseventeen-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );

	// $twentyseventeen_l10n = array(
	// 	'quote'          => twentyseventeen_get_svg( array( 'icon' => 'quote-right' ) ),
	// );

	// if ( has_nav_menu( 'top' ) ) {
	// 	wp_enqueue_script( 'twentyseventeen-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '1.0', true );
	// 	$twentyseventeen_l10n['expand']         = __( 'Expand child menu', 'twentyseventeen' );
	// 	$twentyseventeen_l10n['collapse']       = __( 'Collapse child menu', 'twentyseventeen' );
	// 	$twentyseventeen_l10n['icon']           = twentyseventeen_get_svg( array( 'icon' => 'angle-down', 'fallback' => true ) );
	// }

	// wp_enqueue_script( 'twentyseventeen-global', get_theme_file_uri( '/assets/js/global.js' ), array( 'jquery' ), '1.0', true );

	wp_enqueue_script( 'jquery-scrollto', get_theme_file_uri( '/assets/js/jquery.scrollTo.js' ), array( 'jquery' ), '2.1.2', true );

	wp_localize_script( 'twentyseventeen-skip-link-focus-fix', 'twentyseventeenScreenReaderText', $twentyseventeen_l10n );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'twentyseventeen_scripts' );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentyseventeen_content_image_sizes_attr( $sizes, $size ) {
	$width = $size[0];

	if ( 740 <= $width ) {
		$sizes = '(max-width: 706px) 89vw, (max-width: 767px) 82vw, 740px';
	}

	if ( is_active_sidebar( 'sidebar-1' ) || is_archive() || is_search() || is_home() || is_page() ) {
		if ( ! ( is_page() && 'one-column' === get_theme_mod( 'page_options' ) ) && 767 <= $width ) {
			$sizes = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
		}
	}

	return $sizes;
}
add_filter( 'wp_calculate_image_sizes', 'twentyseventeen_content_image_sizes_attr', 10, 2 );

/**
 * Filter the `sizes` value in the header image markup.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $html   The HTML image tag markup being filtered.
 * @param object $header The custom header object returned by 'get_custom_header()'.
 * @param array  $attr   Array of the attributes for the image tag.
 * @return string The filtered header image HTML.
 */
function twentyseventeen_header_image_tag( $html, $header, $attr ) {
	if ( isset( $attr['sizes'] ) ) {
		$html = str_replace( $attr['sizes'], '100vw', $html );
	}
	return $html;
}
add_filter( 'get_header_image_tag', 'twentyseventeen_header_image_tag', 10, 3 );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array $attr       Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size       Registered image size or flat array of height and width dimensions.
 * @return array The filtered attributes for the image markup.
 */
function twentyseventeen_post_thumbnail_sizes_attr( $attr, $attachment, $size ) {
	if ( is_archive() || is_search() || is_home() ) {
		$attr['sizes'] = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
	} else {
		$attr['sizes'] = '100vw';
	}

	return $attr;
}
add_filter( 'wp_get_attachment_image_attributes', 'twentyseventeen_post_thumbnail_sizes_attr', 10, 3 );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function twentyseventeen_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'twentyseventeen_front_page_template' );

/**
 * Modifies tag cloud widget arguments to display all tags in the same font size
 * and use list format for better accessibility.
 *
 * @since Twenty Seventeen 1.4
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array The filtered arguments for tag cloud widget.
 */
function twentyseventeen_widget_tag_cloud_args( $args ) {
	$args['largest']  = 1;
	$args['smallest'] = 1;
	$args['unit']     = 'em';
	$args['format']   = 'list';

	return $args;
}
add_filter( 'widget_tag_cloud_args', 'twentyseventeen_widget_tag_cloud_args' );

/**
 * Implement the Custom Header feature.
 */
// require get_parent_theme_file_path( '/inc/custom-header.php' );

/**
 * Custom template tags for this theme.
 */
// require get_parent_theme_file_path( '/inc/template-tags.php' );

/**
 * Additional features to allow styling of the templates.
 */
// require get_parent_theme_file_path( '/inc/template-functions.php' );

/**
 * Customizer additions.
 */
// require get_parent_theme_file_path( '/inc/customizer.php' );

/**
 * SVG icons functions and filters.
 */
// require get_parent_theme_file_path( '/inc/icon-functions.php' );































if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

register_nav_menu( 'menu','Меню' ); // enable menus
register_nav_menu( 'bottom-left-menu','Нижнее левое меню' ); // enable menus
register_nav_menu( 'bottom-right-menu','Нижнее правое меню' ); // enable menus
add_theme_support ( 'post-thumbnails' ); // enable thumbnails
add_theme_support( 'custom-logo' );

add_action('after_setup_theme', 'remove_admin_bar'); // disable #wpadminbar
function remove_admin_bar() {
	show_admin_bar( false );
}

/*------------------------------------
GENERAL VARIABLES INITIALIZATION
------------------------------------*/

$debug_mode = true;
$template_url = get_template_directory_uri();
$months = array(
	'01' => 'января',
	'02' => 'февраля',
	'03' => 'марта',
	'04' => 'апреля',
	'05' => 'мая',
	'06' => 'июня',
	'07' => 'июля',
	'08' => 'августа',
	'09' => 'сентября',
	'10' => 'октября',
	'11' => 'ноября',
	'12' => 'декабря',
);

/*------------------------------------
ADDITIONAL FUNCTION FOR VT_RESIZE()
------------------------------------*/

if ( ! function_exists( 'pathinfo_utf') ) {
	function pathinfo_utf($path) {

		if (strpos($path, '/') !== false) {
			$basename = explode( '/', $path );
			$basename = end( $basename );
		}
		elseif (strpos($path, '\\') !== false) {
			$basename = explode( '\\', $path );
			$basename = end( $basename );
		}
		else
			return false;

		if (!$basename)
			return false;

		$dirname = substr($path, 0,
			strlen($path) - strlen($basename) - 1);

		if (strpos($basename, '.') !== false) {
			$extension = explode( '.', $path );
			$extension = end( $extension );
			$filename = substr($basename, 0,
				strlen($basename) - strlen($extension) - 1);
		} else {
			$extension = '';
			$filename = $basename;
		}

		return array (
			'dirname' => $dirname,
			'basename' => $basename,
			'extension' => $extension,
			'filename' => $filename
		);
	}
}

/*-----------------------------------------------------
VT_RESIZE() - RESIZES OR CROPS IMAGES TO SUGGESTED SIZE
-----------------------------------------------------*/

if ( ! function_exists( 'vt_resize') ) {
	function vt_resize( $attach_id = null, $img_url = null, $width, $height, $crop = false ) {
		$request_width = $width;
		$request_height = $height;

        // this is an attachment, so we have the ID
		if ( $attach_id ) {

			$image_src = wp_get_attachment_image_src( $attach_id, 'full' );
			$file_path = get_attached_file( $attach_id );

            // this is not an attachment, let's use the image url
		} else if ( $img_url ) {

			$file_path = parse_url( $img_url );
			$file_path = $_SERVER['DOCUMENT_ROOT'] . $file_path['path'];

            // Look for Multisite Path
			if(file_exists($file_path) === false){
				global $blog_id;
				$file_path = parse_url( $img_url );
				if (preg_match("/files/", $file_path['path'])) {
					$path = explode('/',$file_path['path']);
					foreach($path as $k=>$v){
						if($v == 'files'){
							$path[$k-1] = 'wp-content/blogs.dir/'.$blog_id;
						}
					}
					$path = implode('/',$path);
				}
				$file_path = $_SERVER['DOCUMENT_ROOT'].$path;
			}
            //$file_path = ltrim( $file_path['path'], '/' );
            //$file_path = rtrim( ABSPATH, '/' ).$file_path['path'];

			$orig_size = getimagesize( $file_path );

			$image_src[0] = $img_url;
			$image_src[1] = $orig_size[0];
			$image_src[2] = $orig_size[1];
		}

		$file_info = pathinfo_utf( $file_path );

        // check if file exists
		$base_file = $file_info['dirname'].'/'.$file_info['filename'].'.'.$file_info['extension'];
		if ( !file_exists($base_file) )
			return;

		$extension = '.'. $file_info['extension'];

        // the image path without the extension
		$no_ext_path = $file_info['dirname'].'/'.$file_info['filename'];

		$cropped_img_path = $no_ext_path.'-'.$width.'x'.$height.$extension;

        // checking if the file size is larger than the target size
        // if it is smaller or the same size, stop right here and return
		if ( true ) {
			$safe_time = 60 * 60 * 1000;
			$proportional_size = wp_constrain_dimensions( $image_src[1], $image_src[2], $width, $height );

			if ( file_exists( $cropped_img_path ) && time() < ( $safe_time + filemtime( $cropped_img_path ) ) ) {
				$cropped_img_url = str_replace( basename( $image_src[0] ), basename( $cropped_img_path ), $image_src[0] );

				if( $crop ) {
					$vt_image = array (
						'url'    => $cropped_img_url,
						'width'  => $width,
						'height' => $height
					);
				}
				else {
					$vt_image = array (
						'url'    => $cropped_img_url,
						'width'  => $proportional_size[0],
						'height' => $proportional_size[1],
					);
				}

				return $vt_image;
			}

            // check if image width is smaller than set width
			$img_size = getimagesize( $file_path );
			if ( $img_size[0] <= $request_width ) {
				$request_width = $img_size[0];
			}

            // Check if GD Library installed
			if (!function_exists ('imagecreatetruecolor')) {
				echo 'GD Library Error: imagecreatetruecolor does not exist - please contact your webhost and ask them to install the GD library';
				return;
			}

            // no cache files - let's finally resize it
			$new_img = wp_get_image_editor( $file_path );
			$new_img->resize( ( $crop ? $request_width : $proportional_size[0] ), ( $crop ? $request_height : $proportional_size[1] ), $crop );
			$new_img_size = $new_img->get_size();
			$path_parts = pathinfo( $file_path );
			$new_img_path = $path_parts['dirname'] . '/' . $path_parts['filename'] . '-' . $width . 'x' . $height . '.' . $path_parts['extension'];
			$new_img->save( $new_img_path );
			$new_img = str_replace( basename( $image_src[0] ), basename( $new_img_path ), $image_src[0] );
            // resized output
			$vt_image = array (
				'url' => $new_img,
				'width' => $new_img_size['width'],
				'height' => $new_img_size['height']
			);

			return $vt_image;
		}

        // default output - without resizing
		$vt_image = array (
			'url' => $image_src[0],
			'width' => $width,
			'height' => $height
		);

		return $vt_image;
	}
};

/*------------------------------------
BREADCRUMBS
------------------------------------*/

function the_breadcrumbs( $post_type = '' ) {
	global $wp_query;
	$divider = ' / ';

	if ( ! is_front_page()) {
		echo '<a href="' . get_option('home') . '">Главная</a>';
		if( is_archive() &&  'product' != $post_type ) {
			echo $divider;
			post_type_archive_title();
		}
		if ( is_tax() || is_category() || is_single() ) {
			if( 'post' != $post_type && 'product' != $post_type ) {
				$post_type_obj = get_post_type_object( $post_type );
				echo '<a href="' . get_post_type_archive_link( $post_type ) . '">' . $post_type_obj->labels->name . '</a>';
			}

			if( 'product' == $post_type ) {
				$taxonomy = 'product_cat';
				if( is_tax() ) {
					$queries = $wp_query->tax_query->queries;
					$cc_slug = $queries[0]['terms'][0];
				}
				else {
					$cats = get_the_terms( get_the_id(), $taxonomy );
					foreach( $cats as $cat ) {
						$has_children = false;
						foreach( $cats as $_cat ) {
							if( $_cat->parent == $cat->term_id ) {
								$has_children = true;
							}
						}
						if( ! $has_children ) {
							$cc_slug = $cat->slug;
							break;
						}
					}
				}
				$cc = get_term_by( 'slug', $cc_slug, $taxonomy );

				if( is_single() ) {
					$crumbs = $divider . '<a href="' . get_term_link( $cc, $taxonomy ) . '">' . $cc->name . '</a>' . $divider . get_the_title();
				}
				else {
					$crumbs = $divider . $cc->name;
				}
				while( $cc->parent ) {
					$cc = get_term_by( 'term_id', $cc->parent, $taxonomy );
					if( 0 == $cc->parent ) {
						$crumbs = $divider . '<a href="' . get_term_link( $cc, $taxonomy ) . '">' . $cc->name . '</a>' . $crumbs;
					}
				}
				echo $crumbs;
			}
			elseif( is_tax() || is_category() ) {
				$queries = $wp_query->tax_query->queries;

				if( count( $queries ) > 0 ) {
					$cc = get_term_by( 'slug', $queries[0]['terms'][0], $queries[0]['taxonomy'] );

                    //echo $divider;
					echo $cc->name;
				}
			}
			elseif  ( is_single() ) {
				$post_type = get_post_type();
				$post_type_object = get_post_type_object( $post_type );
				$post_type_link = get_post_type_archive_link( $post_type_object );
				$post_type_labels = get_post_type_labels( $post_type_object );

				echo $divider;
				echo '<a href="' . $post_type_link . '">' . $post_type_labels->name . '</a>';
				echo $divider;
				the_title();
			}
		} elseif ( is_page() ) {
			echo $divider;
			the_title();
		}
		elseif ( is_search() ) {
			echo $divider;
			echo 'Поиск';
		}
	}
}

/*------------------------------------
PAGINATION
------------------------------------*/

function get_corenavi( $wp_query = null, $base = null ) {

	if( ! $wp_query ) {
		global $wp_query;
	}

	$pagination = '';
	$max        = $wp_query->max_num_pages;

	if ( ! $current = $wp_query->query['paged'] ) {
		$current = 1;
	}

	$a['base']      = $base ? $base . 'page/%#%' : str_replace( 999999999, '%#%', get_pagenum_link( 999999999 ) );
	$a['total']     = $max;
	$a['current']   = $current;
	$a['mid_size']  = 2;
	$a['end_size']  = 2;
	$a['prev_text'] = '
	<svg width="23" height="12" viewBox="0 0 23 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M22 6L2 6" stroke="#0A1743" stroke-width="1.5" stroke-linecap="round"/>
	<path d="M6 11L1 6L6 1" stroke="#0A1743" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
	</svg>
	Предыдущая
	';
	$a['next_text'] = '
	Следующая
	<svg width="23" height="12" viewBox="0 0 23 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M1 6L21 6" stroke="#0A1743" stroke-width="1.5" stroke-linecap="round"/>
	<path d="M17 11L22 6L17 1" stroke="#0A1743" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
	</svg>
	';

	$pagination .= '<div class="pagination">';
	if ( $max > 1 ) {
		$pagination .= paginate_links( $a );
	}
	$pagination .= '</div>';

	return $pagination;

}

/*------------------------------------
POST TITLE EQUAL/LIKE
------------------------------------*/

add_filter( 'posts_where', 'title_equal_posts_where', 10, 2 );
function title_equal_posts_where( $where, $wp_query ) {
	global $wpdb;
	if ( $post_title_equal = $wp_query->get( 'post_title_equal' ) ) {
		if( '' != $post_title_equal ) {
			$where .= ' AND ' . $wpdb->posts . '.post_title = \'' . esc_sql( $wpdb->esc_like( $post_title_equal ) ) . '\''; 
		}
	}
	if ( $post_title_like = $wp_query->get( 'post_title_like' ) ) {
		if( '' != $post_title_like ) {
			$where .= ' AND ' . $wpdb->posts . '.post_title LIKE \'%' . esc_sql( $wpdb->esc_like( $post_title_like ) ) . '%\'';
		}
	}
	return $where;
}

/*------------------------------------
FORMAT DATE TO MONTH-STRING
------------------------------------*/

function format_date( $date ) {
	$months = array(
		'01' => 'января',
		'02' => 'февраля',
		'03' => 'марта',
		'04' => 'апреля',
		'05' => 'мая',
		'06' => 'июня',
		'07' => 'июля',
		'08' => 'августа',
		'09' => 'сентября',
		'10' => 'октября',
		'11' => 'ноября',
		'12' => 'декабря',
	);

	$date = explode( '.', $date );

	return implode( ' ', array( $date[2], $months[ $date[1] ] ) );
}

/*------------------------------------
GET RANDOM IDS FOR POST TYPE
------------------------------------*/

function get_random_ids( $count = 6, $post_type = 'post', $exclude = 0 ) {
    // Get all ids of all posts
	$args = array(
		'numberposts' => -1,
		'fields' => 'ids',
		'post_type' => $post_type,
	);
	$random_posts_ids = get_posts( $args );

    // Remove current post
	if( 0 != $exclude ) {
		$to_del_id = array_search( $exclude , $random_posts_ids );
		unset( $random_posts_ids[$to_del_id] );
	}

    // Sort ids in random
	if( count( $random_posts_ids ) < $count ) {
		$count = count( $random_posts_ids );
	}
	$rnd_indexes = array_rand( $random_posts_ids, $count );
	if( 1 == count( $rnd_indexes ) ) {
		$rnd_indexes = array( $rnd_indexes );
	}

    // Get new random array
	$rnd_posts = array();
	foreach( $rnd_indexes as $rnd_index ) {
		$rnd_posts[] = $random_posts_ids[$rnd_index];
	}

	return $rnd_posts;
}

/*------------------------------------
AUTOUPDATE WORDPRESS
------------------------------------*/

add_filter( 'allow_major_auto_core_updates', '__return_true' );
add_filter( 'allow_minor_auto_core_updates', '__return_true' );
add_filter( 'auto_update_plugin', '__return_true' );

/*------------------------------------
ENABLE SESSIONS
------------------------------------*/

function myStartSession() {
	if(!session_id()) {
		session_start();
	}
}
function myEndSession() {
	session_destroy ();
}
add_action('init', 'myStartSession', 1);
add_action('wp_logout', 'myEndSession');
add_action('wp_login', 'myEndSession');

/*------------------------------------
GET IMAGE THUMBNAIL
------------------------------------*/

function get_image_thumbnail( $url, $width, $height, $crop = true ) {
	if( '' != $url ) {
		$image = vt_resize( null, $url, $width, $height, $crop );
	}
	if( ! isset( $image['url'] ) ) {
		$image = array(
			'url'         => '',
			'original_w'  => 0,
			'original_h'  => 0,
			'thumbnail_w' => 0,
			'thumbnail_h' => 0,
		);
	}

	return array(
		'original'    => $url,
		'thumbnail'   => $image['url'],
		'original_w'  => $image['original_w'],
		'original_h'  => $image['original_h'],
		'thumbnail_w' => $image['thumbnail_w'],
		'thumbnail_h' => $image['thumbnail_h'],
	);
}

/*------------------------------------
GET POST THUMBNAIL
------------------------------------*/

function get_post_thumbnail( $post_id, $width, $height, $crop = true ) {
	$url = wp_get_attachment_url( get_post_thumbnail_id( $post_id ) );

	return get_image_thumbnail( $url, $width, $height, $crop );
}

/*------------------------------------
CROP STRING IF IT LONGER THEN "N"
------------------------------------*/

function crop_string( $string = '', $length = 0 ) {
	if( mb_strlen( $string ) > $length ) {
		$string = mb_substr( $string, 0, $length );
		if( $length != $right_space_pos = mb_strrpos( $string, ' ' )) {
			$string = mb_substr( $string, 0, $right_space_pos );
		}
		$string .= '...';
	}

	return $string;
}

/*------------------------------------
IF POST VARIABLE ISSET AND IS NOT
EMPTY STRING
------------------------------------*/

function post_var_isset( $key ) {
	return isset( $_POST[$key] ) && '' != $_POST[$key];
}

/*------------------------------------
IF SESSION VARIABLE ISSET AND IS NOT
EMPTY STRING
------------------------------------*/

function session_var_isset( $key ) {
	return isset( $_SESSION[$key] ) && '' != $_SESSION[$key];
}

/*------------------------------------
GET MIN MAX META VALUE FOR TERM
------------------------------------*/

function get_min_max_meta_value( $key, $type = 'max', $term_id ) {
	global $wpdb;
	$cash_key = md5( $key . $type );

	if( WP_DEBUG ) {
		wp_cache_delete( $cash_key, $term_id );
	}

	$results = wp_cache_get( $cash_key, $term_id );

	if( false === $results ){
		$sql = "SELECT " . $type . "( cast( meta_value as UNSIGNED ) ) FROM {$wpdb->postmeta} pm INNER JOIN {$wpdb->term_relationships} trs ON pm.post_id=trs.object_id WHERE pm.meta_key='%s'";
		if( $term_id > 0 ) {
			$sql .= " AND trs.term_taxonomy_id=%d";
		}
		$query = $wpdb->prepare( $sql, $key, $term_id );
		$value = $wpdb->get_var( $query );

		if( '' != $value ) {
			wp_cache_set( $cash_key, $value, $term_id, 600 );
			return $value;
		}
		else {
			return 0;
		}
	}
	else {
		return $results;
	}
}

/*------------------------------------
MULTIBYTE UPPERCASE FIRST
------------------------------------*/

function mb_ucfirst( $string ) {
	$char = mb_substr( $string, 0, 1 );
	$string = mb_substr( $string, 1, mb_strlen( $string ) - 1 );

	return mb_strtoupper( $char ) . $string;
}

/*------------------------------------
CHECK URL FOR ACTIVE
------------------------------------*/

function check_url_for_active( $url ) {
	if( ! $url ) {
		return false;
	}

	$request_url = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	if( '/' == $request_url[strlen( $request_url ) - 1] ) {
		$request_url = substr( $request_url, 0, strlen( $request_url ) - 1 );
	}
	if( '/' == $url[strlen( $url ) - 1] ) {
		$url = substr( $url, 0, strlen( $url ) - 1 );
	}
	$is_active = false !== strpos( $request_url, $url );

	return $is_active;
}

/*------------------------------------
SITE GENERAL SETTINGS
------------------------------------*/

add_action( 'customize_register','my_customize_register' );
function my_customize_register( $wp_customize ) {

	$sections = array(

		'notify_email' => array(
			'attrs' => array (
				'title' => 'Email\'ы для оповещений',
				'priority' => 170,
			),
			'settings' => array(
				array(
					'slug' => 'feedback_notify_email',
					'label' => 'Заявка на обратную связь',
					'type' => 'text',
				),
				array(
					'slug' => 'review_notify_email',
					'label' => 'Отзыв о компании',
					'type' => 'text',
				),
				array(
					'slug' => 'mebel_notify_email',
					'label' => 'Заявка на окно',
					'type' => 'text',
				),
				array(
					'slug' => 'windows_notify_email',
					'label' => 'Заявка на Окна',
					'type' => 'text',
				),
				array(
					'slug' => 'portnaya_notify_email',
					'label' => 'Заявка в портную',
					'type' => 'text',
				),
				array(
					'slug' => 'loundry_notify_email',
					'label' => 'Заявка на прачечную',
					'type' => 'text',
				),
				array(
					'slug' => 'products_notify_email',
					'label' => 'Заявка на продуктовый магазин',
					'type' => 'text',
				),
				array(
					'slug' => 'repair_kovrov_notify_email',
					'label' => 'Заявка на ремонт ковров',
					'type' => 'text',
				),
				array(
					'slug' => 'repair_technics_notify_email',
					'label' => 'Заявка на ремонт техники',
					'type' => 'text',
				),
				array(
					'slug' => 'souvenirs_notify_email',
					'label' => 'Заявка в сувенирную',
					'type' => 'text',
				),
				array(
					'slug' => 'himchistka_shoes_notify_email',
					'label' => 'Заявка на ремонт обуви',
					'type' => 'text',
				),
				
			),
		),

		'contact_information' => array(
			'attrs' => array (
				'title' => 'Контактная информация',
				'priority' => 171,
			),
			'settings' => array(
				array(
					'slug' => 'contact_email',
					'label' => 'Email',
					'type' => 'email',
				),
				array(
					'slug' => 'contact_phone',
					'label' => 'Телефон',
					'type' => 'text',
				),
			),
		),

	);

    // MAGIC IS REAL

	foreach( $sections as $section_slug => $section ) {
		$wp_customize->add_section( $section_slug , $section['attrs'] );
		foreach( $section['settings'] as $control ) {
			$wp_customize->add_setting( $control['slug'], array() );
			$wp_customize->add_control( $control['slug'], array(
				'label' => $control['label'],
				'type' => $control['type'],
				'section' => $section_slug,
			));
		}
	}
}
/*------------------------------------
CHECK REQUIRED FIELDS
------------------------------------*/

function check_required_fields( $fields ) {
	$errors = array();

	if( $fields ) {
		foreach( $fields as $field => $value ) {
			if( '' == $value ) {
				$errors[] = array(
					'field'   => $field,
					'message' => 'Поля является обязательным',
				);
			}
		}
	}

	return $errors;
}

/*------------------------------------
PRINT SELECT
------------------------------------*/

function print_select( $name, $options ) {
	$option_val = isset( $_REQUEST[ $name ] ) ? $_REQUEST[ $name ] : '';
	?>
	<select name="<?php echo $name; ?>">
		<?php foreach( $options as $key => $value ): ?>
			<option value="<?php echo $value; ?>"<?php if( $option_val == $value ) { echo ' selected'; } ?>><?php echo $key; ?></option>
		<?php endforeach; ?>
	</select>
	<?php
}

/*------------------------------------
SEND AJAX RESPONSE
------------------------------------*/

function send_ajax_response( $status, $data = array() ) {
	$response = json_encode(
		array(
			'status' => $status,
			'data'   => $data,
		),
		256
	);
	
	echo $response;
	
	exit;
}

/*------------------------------------
SUBMIT EMAIL FORM
------------------------------------*/

add_action( 'wp_ajax_nopriv_submit_email_form', 'ajax_submit_email_form' );
add_action( 'wp_ajax_submit_email_form', 'ajax_submit_email_form' );

function ajax_submit_email_form() {
	$eol          = "\r\n";
	$separator    = md5( time() );
	$form_name    = isset( $_REQUEST['form_name'] ) ? sanitize_text_field( $_REQUEST['form_name'] ) : '';
	$no_form_name = false;
	$errors       = array();

	switch( $form_name ) {
		case 'feedback':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка на обратный звонок';
		
		break;

		case 'online_record':
		$company_id = isset( $_REQUEST['company_id'] ) ? sanitize_text_field( $_REQUEST['company_id'] ) : '';

		$fields = array(
			'name'  => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone' => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'service' => isset( $_REQUEST['service'] ) ? sanitize_text_field( $_REQUEST['service'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'  => 'Имя',
			'phone' => 'Номер телефона',
			'service' => 'Название услуги',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'  => $fields['name'],
			'phone' => $fields['phone'],
			'service' => $fields['service'],
			'message' => $fields['message'],
		);
		$subject = 'Онлайн запись на услугу';
		break;

		case 'booking_general':
		$company_id = isset( $_REQUEST['company'] ) ? sanitize_text_field( $_REQUEST['company'] ) : '';

		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'service' => isset( $_REQUEST['service'] ) ? sanitize_text_field( $_REQUEST['service'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'service' => 'Услуга',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'service' => $fields['service'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка на услугу';
		
		break;

		case 'review':
		$review_company_id = isset( $_REQUEST['company_id'] ) ? sanitize_text_field( $_REQUEST['company_id'] ) : '';

		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'rating'  => isset( $_REQUEST['rating'] ) ? sanitize_text_field( $_REQUEST['rating'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
			'notice'  => 'Необходимо одобрить или отклонить отзыв в админ панели',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'rating'  => 'Рейтинг',
			'message' => 'Сообщение',
			'notice'  => 'Напоминание',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'rating'  => $fields['rating'],
			'message' => $fields['message'],
		);
		$subject = 'Отзыв о компании';
		
		break;







		case 'portnaya':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'loundry':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'products':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'repair_kovrov':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'repair_technics':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'souvenirs':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		case 'himchistka_shoes':
		$fields = array(
			'name'    => isset( $_REQUEST['name'] ) ? sanitize_text_field( $_REQUEST['name'] ) : '',
			'phone'   => isset( $_REQUEST['phone'] ) ? sanitize_text_field( $_REQUEST['phone'] ) : '',
			'mail' 		=> isset( $_REQUEST['mail'] ) ? sanitize_text_field( $_REQUEST['mail'] ) : '',
			'message' => isset( $_REQUEST['message'] ) ? sanitize_text_field( $_REQUEST['message'] ) : '',
		);
		$labels = array(
			'name'    => 'Имя',
			'phone'   => 'Номер телефона',
			'mail' 		=> 'Email',
			'message' => 'Сообщение',
		);
		$required = array(
			'name'    => $fields['name'],
			'phone'   => $fields['phone'],
			'mail' 		=> $fields['mail'],
			'message' => $fields['message'],
		);
		$subject = 'Заявка для сувенирной лавки';
		
		break;
		default:
		$no_form_name = true;
	}
	
    // Return errors if there are some
	if( $no_form_name ) {
		echo 0;
		
		exit;
	}
	
	$errors = array_merge( $errors, check_required_fields( $required ) );

    // Return errors if there are some
	if( $errors ) {
		$data = array(
			'errors' => $errors,
		);
		
		send_ajax_response( 'fail', $data );
	}

	
	
    // Form and send message to administrator
	$headers = "From: Centr 24 <robot@centr24.ru>" . $eol;
	$headers .= "MIME-Version: 1.0" . $eol;
	$headers .= "Content-Type: multipart/mixed; boundary=\"" . $separator . "\"" . $eol;
	$headers .= "Content-Transfer-Encoding: 7bit" . $eol;
	$headers .= "This is a MIME encoded message." . $eol;
	
	if( isset( $company_id ) ){
		$to = get_field( 'comp_post', $company_id );
	}
	else {
		$to = get_theme_mod( $form_name . '_notify_email' );
	}
	
	$message = "--" . $separator . $eol;
	$message .= "Content-Type: text/html; charset=\"utf-8\"" . $eol;
	$message .= "Content-Transfer-Encoding: 8bit" . $eol;
	$message .= "\n";
	foreach( $labels as $key => $label ) {
		if( '' != $fields[ $key ] ) {
			$message .= "<p><b>" . $label . "</b>: " . $fields[ $key ] . "</p>";
		}
	}
	$message .= '<p>&nbsp;</p>';
	$message .= $eol;
	
	$mailed = mail( $to, $subject, $message, $headers, '' );
	
	if( $mailed ) {
		if( isset( $review_company_id ) ) {
				$review_data = [
					'review_name'   => $fields['name'],
					'review_date'   => date( 'd.m.Y' ),
					'review_text'   => $fields['message'],
					'review_rating' => $fields['rating'],
					'approved'      => 0,
				];
				
				$test = add_row( 'reviews_company', $review_data, $review_company_id );
		}

		$data = array(
			'success_msg' => 'Ваша заявка успешно отправлена',
			'test' => $test,
		);

		send_ajax_response( 'success', $data );
	}
	else {
		$data = array(
			'errors' => array(
				array(
					'field' => 'general',
					'text'  => 'При отправке формы произошла ошибка.<br />Попробуйте ещё раз или повторите попытку позднее.',
				),
			),
		);
		
		send_ajax_response( 'fail', $data );
	}
}



/*------------------------------------
Get categories by brands
------------------------------------*/
function get_categories_by_brands( $manufacturer_id ) {
	global $wpdb;

	$manufacturer_id = (int) $manufacturer_id;

	$categories = $wpdb->get_results(
		'SELECT sel2.category_id AS term_id, sel2.category_name AS name FROM (SELECT p.id AS product_id FROM wp_posts AS p 
		LEFT JOIN wp_term_relationships AS tr ON p.id = tr.object_id 
		LEFT JOIN wp_terms AS t ON tr.term_taxonomy_id = t.term_id 
		LEFT JOIN wp_term_taxonomy AS tt ON t.term_id = tt.term_id 
		WHERE tt.taxonomy = \'manufacturer\' && t.term_id = ' . $manufacturer_id . ') AS sel1
		LEFT JOIN
		(SELECT p2.id AS product_id, t2.term_id AS category_id, t2.name AS category_name FROM wp_posts AS p2 
		LEFT JOIN wp_term_relationships AS tr2 ON p2.id = tr2.object_id 
		LEFT JOIN wp_terms AS t2 ON tr2.term_taxonomy_id = t2.term_id 
		LEFT JOIN wp_term_taxonomy AS tt2 ON t2.term_id = tt2.term_id
		WHERE tt2.taxonomy = \'categories\' ) AS sel2
		ON sel1.product_id = sel2.product_id
		GROUP BY sel2.category_id',
		OBJECT
	);

	return $categories;
}



/*------------------------------------
GET OFFERS COUNT BY ATTRIBUTE
------------------------------------*/

function get_category_count_by_attribute( $post_type, $attributes = array() ) {
	$meta_query   = array();
	$offers_count = 0;

	if( $attributes ) {
		foreach( $attributes as $i => $attribute ) {
			$meta_query[] = array(
				'key'     => $attribute[0],
				'value'   => $attribute[1],
				'compare' => isset( $attribute[2] ) ? $attribute[2] : '=',
				'type'    => is_numeric( $attribute[1] ) ? 'numeric' : 'char',
			);
		}
	}

	$args = array(
		'post_type'      => $post_type,
		'posts_per_page' => 1,
		'meta_query'     => $meta_query,
	);

	$offers_query = new WP_Query( $args );
	$offers_count = $offers_query->found_posts;

	return $offers_count;
}



/*------------------------------------
GET ADD TYPE
------------------------------------*/

function get_add_type( $value ) {
	$value_10  = round( (float) $value ) % 10;
	$value_100 = round( (float) $value ) % 100;

	if( $value_10 == 1 && ( $value_100 < 10 || $value_100 > 20 ) ) {
		$add_type = 0;
	}
	elseif( in_array( $value_10, array( 2, 3, 4 ) ) && ( $value_100 < 10 || $value_100 > 20 ) ) {
		$add_type = 1;
	}
	else {
		$add_type = 2;
	}

	return $add_type;
}



/*------------------------------------
Convert english mouth to russian
------------------------------------*/

function dateToRussian( $str )
{
	$str = str_replace('January', 'Январь', $str);
	$str = str_replace('February', 'Февраль', $str);
	$str = str_replace('March', 'Март', $str);
	$str = str_replace('April', 'Апрель', $str);
	$str = str_replace('May', 'Май', $str);
	$str = str_replace('June', 'Июнь', $str);
	$str = str_replace('July', 'Июль', $str);
	$str = str_replace('August', 'Август', $str);
	$str = str_replace('September', 'Сентябрь', $str);
	$str = str_replace('October', 'Октябрь', $str);
	$str = str_replace('November', 'Ноябрь', $str);
	$str = str_replace('December', 'Декабрь', $str);

	return $str;
}



/*------------------------------------
CLEAR PHONE FUNCTION
------------------------------------*/

function clear_phone( $phone ) {
	$phone = str_replace( array( ' ', '+', '-', '(', ')' ), '', $phone );

	return $phone;
}



/*------------------------------------
BREADCRUMBS
------------------------------------*/

function custom_breadcrumbs() {

    // Settings
	$separator          = ' / ';
	$breadcrums_id      = 'breadcrumbs';
	$breadcrums_class   = 'breadcrumbs';
	$home_title         = 'Главная';

    // If you have any custom post types with custom taxonomies, put the taxonomy name below (e.g. product_cat)
	$custom_taxonomy    = 'product_cat';

    // Get the query & post information
	global $post,$wp_query;

    // Do not display on the homepage
	if ( !is_front_page() ) {

        // Build the breadcrums
		echo '<div class="' . $breadcrums_class . '">';

        // Home page
		echo '<a class="bread-link bread-home" href="' . get_home_url() . '" title="' . $home_title . '">' . $home_title . '</a>';
		echo $separator;

		if ( is_archive() && !is_tax() && !is_category() && !is_tag() ) {

			echo post_type_archive_title($prefix, false);

		} else if ( is_archive() && is_tax() && !is_category() && !is_tag() ) {

            // If post is a custom post type
			$post_type = get_post_type();

            // If it is a custom post type display name and link
			if($post_type != 'post') {

				$post_type_object = get_post_type_object($post_type);
				$post_type_archive = get_post_type_archive_link($post_type);

				echo '<a class="bread-cat bread-custom-post-type-' . $post_type . '" href="' . $post_type_archive . '" title="' . $post_type_object->labels->name . '">' . $post_type_object->labels->name . '</a>';
				echo $separator;

			}

			$custom_tax_name = get_queried_object()->name;
			echo $custom_tax_name;

		} else if ( is_single() ) {

            // If post is a custom post type
			$post_type = get_post_type();

            // If it is a custom post type display name and link
			if($post_type != 'post') {

				$post_type_object = get_post_type_object($post_type);
				$post_type_archive = get_post_type_archive_link($post_type);

				echo '<a class="bread-cat bread-custom-post-type-' . $post_type . '" href="' . $post_type_archive . '" title="' . $post_type_object->labels->name . '">' . $post_type_object->labels->name . '</a>';
				echo $separator;

			}

            // Get post category info
			$category = get_the_category();

			if(!empty($category)) {

                // Get last category post is in
				$last_category = end(array_values($category));

                // Get parent any categories and create array
				$get_cat_parents = rtrim(get_category_parents($last_category->term_id, true, ','),',');
				$cat_parents = explode(',',$get_cat_parents);

                // Loop through parent categories and store in variable $cat_display
				$cat_display = '';
				foreach($cat_parents as $parents) {
					$cat_display .= $parents;
					$cat_display .= $separator;
				}

			}

            // If it's a custom post type within a custom taxonomy
			$taxonomy_exists = taxonomy_exists($custom_taxonomy);
			if(empty($last_category) && !empty($custom_taxonomy) && $taxonomy_exists) {

				$taxonomy_terms = get_the_terms( $post->ID, $custom_taxonomy );
				$cat_id         = $taxonomy_terms[0]->term_id;
				$cat_nicename   = $taxonomy_terms[0]->slug;
				$cat_link       = get_term_link($taxonomy_terms[0]->term_id, $custom_taxonomy);
				$cat_name       = $taxonomy_terms[0]->name;

			}
            // Check if the post is in a category
			if(!empty($last_category)) {
				echo strip_tags( $cat_display );
				echo get_the_title();
            // Else if post is in a custom taxonomy
			} else if(!empty($cat_id)) {

				echo '<a class="bread-cat bread-cat-' . $cat_id . ' bread-cat-' . $cat_nicename . '" href="' . $cat_link . '" title="' . $cat_name . '">' . $cat_name . '</a>';
				echo $separator;
				echo get_the_title();

			} else {
				echo get_the_title();
			}

		} else if ( is_category() ) {
            // Category page
			echo single_cat_title('', false);

		} else if ( is_page() ) {
            // Standard page
			if( $post->post_parent ){
                // If child page, get parents 
				$anc = get_post_ancestors( $post->ID );
                // Get parents in the right order
				$anc = array_reverse($anc);
                // Parent page loop
				if ( !isset( $parents ) ) $parents = null;
				foreach ( $anc as $ancestor ) {
					$parents .= '<a class="bread-parent bread-parent-' . $ancestor . '" href="' . get_permalink($ancestor) . '" title="' . get_the_title($ancestor) . '">' . get_the_title($ancestor) . '</a>';
					$parents .= $separator;
				}
                // Display parent pages
				echo $parents;
                // Current page
				echo get_the_title();

			} else {
                // Just display current page if not parents
				echo get_the_title();

			}

		} else if ( is_tag() ) {
            // Tag page
            // Get tag information
			$term_id        = get_query_var('tag_id');
			$taxonomy       = 'post_tag';
			$args           = 'include=' . $term_id;
			$terms          = get_terms( $taxonomy, $args );
			$get_term_id    = $terms[0]->term_id;
			$get_term_slug  = $terms[0]->slug;
			$get_term_name  = $terms[0]->name;
            // Display the tag name
			echo $get_term_name;

		} elseif ( is_day() ) {
            // Day archive
            // Year link
			echo '<a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a>';
			echo $separator;
            // Month link
			echo '<a class="bread-month bread-month-' . get_the_time('m') . '" href="' . get_month_link( get_the_time('Y'), get_the_time('m') ) . '" title="' . get_the_time('M') . '">' . get_the_time('M') . ' Archives</a>';
			echo $separator;
            // Day display
			echo get_the_time('jS') . ' ' . get_the_time('M') . ' Archives';

		} else if ( is_month() ) {
            // Month Archive
            // Year link
			echo '<a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a>';
			echo $separator;
            // Month display
			echo get_the_time('M') . ' Archives';

		} else if ( is_year() ) {
            // Display year archive
			echo get_the_time('Y') . ' Archives';

		} else if ( is_author() ) {
            // Auhor archive
            // Get the author information
			global $author;
			$userdata = get_userdata( $author );
            // Display author name
			echo 'Автор: ' . $userdata->display_name;

		} else if ( get_query_var('paged') ) {
            // Paginated archives
			echo ('Page') . ' ' . get_query_var('paged');

		} else if ( is_search() ) {
            // Search results page
			echo 'Результаты поиска: ' . get_search_query();

		} elseif ( is_404() ) {
            // 404 page
			echo 'Ошибка 404';
		}

		echo '</div>';
	}
}



