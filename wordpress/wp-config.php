<?php
// ** Database settings - You can get this info from your web host ** //
define( 'DB_NAME', 'inception' );
define( 'DB_USER', 'kejebane' );
define( 'DB_PASSWORD', 'kejebane_pass' );
define( 'DB_HOST', 'mariadb_kejebane' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         '2J/HrVAP*Qm>2-K:dO+3JRZ)c;*;;+Q](VaR<yMw%m%+I3ququj*RfFGe/ ?jhdq');
define('SECURE_AUTH_KEY',  '](US01S5|5p>1LW9q:*$Vu+<Ky-{5;kq|e+vSnoqt>4w?HjO(++=5S>SA[Yo:z`L');
define('LOGGED_IN_KEY',    'CLJ}R-PiGm|Zj15uyM {Ch!!8,rop*~Z4TafNMR6A%rw6|FYDLjj>o4,&= &D=3j');
define('NONCE_KEY',        '*yrC0iMe+/*~CM2!x-m;v,rZ_s#HsFUt*AeYq3`?c>-*E<B^NlBUkr?AW2NHbOPX');
define('AUTH_SALT',        '[A%RV%)(usmLa/#55~`zRPfxsRfJxh5@[LA{c;vji8Q;lp607Md}cgv+EAoY+5+|');
define('SECURE_AUTH_SALT', 'ia$Q$oyduw`N~[+|_+s{,+t.mrb5#WsUIP@$[p6IQr86Zv(PBW6e2SSf|*G9D^[&');
define('LOGGED_IN_SALT',   'Ym}rij`3+1F].pB|9.7}}+`<M[_a7.7e7^($]?RYRLT,3|&Bk4f>m$R*dny*+*W(');
define('NONCE_SALT',       'sr-5R?tcH)%|kCB(gSM+ Fa(~mNG16A^/+@w.t u;qhW^;!T*f0Sk8,,RwC~|-j4');

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

require_once ABSPATH . 'wp-settings.php';
