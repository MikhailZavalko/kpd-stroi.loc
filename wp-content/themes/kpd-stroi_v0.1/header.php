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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/x-icon" href="<?php echo $template_url; ?>/img/favicon/favicon.ico">
	<link rel="stylesheet" id="main" href="<?php echo $template_url; ?>/css/main.min.css" type="text/css" media="all">

	<script type="text/javascript">
		/* <![CDATA[ */
		var ajax_info = { url: '/wp-admin/admin-ajax.php', redirecturl: '/' };
		var template_url = '<?php echo $template_url; ?>';
		/* ]]> */
	</script>

	<?php wp_head(); ?>

</head>

<body>