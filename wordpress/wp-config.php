<?php
// ** Database settings - You can get this info from your web host ** //
define( 'DB_NAME', 'inception' );
define( 'DB_USER', 'kejebane' );
define( 'DB_PASSWORD', 'kejebane_pass' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'X|_gQ`2-w &U$imehBii<w>O9YHCP{=h)DC*AzasN/:MN-HP/+3!b)O]GuiZY0?k');
define('SECURE_AUTH_KEY',  'FR~HtTf-mVI]L`vr?6mKj[I<}2hoa#=Gg(Mp{!u$Gb.ySgR$s+_t3/AXXJ6OFM-z');
define('LOGGED_IN_KEY',    '?E]`X/#`VM+Z~+3:AX&TG7x!K/$-CoMHe:#bWo:}e)RqF(A0^o+;)&Pt)Nkkeu>b');
define('NONCE_KEY',        '$-~6+9m.mTR>HMh+d_T|8[ZnKM~EOpMawM-Z[[+=3GMIqlaOwc!|sufk^GRms]&+');
define('AUTH_SALT',        'uHv`]v/fUp_#qeAe7K>T!OebnV6Jp=C$?QX-;ZvB:gv*5=KF~bPV|fehIc-u--|[');
define('SECURE_AUTH_SALT', '>?C>I{u|Bo4U2k>L9AIIz+<;u+NF%4Q_,r>;~!!,TU3*+H%h9W@:oLTf?fJ_5UxT');
define('LOGGED_IN_SALT',   'Mr4DL% %<k$$U%cX TXI0dR[Cp~`nG:4>Mf-fMFo>H>jMF~K,wvmA@Bm|E)Usp|v');
define('NONCE_SALT',       '+=WyBG8E(@U.lco|Y+f-P#P!k#IN`a^+.,huU}+I{}vo%(c$$V{,8+^`~`SnGa|[');

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

require_once ABSPATH . 'wp-settings.php';
