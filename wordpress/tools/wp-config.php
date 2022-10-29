<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_name' );

/** Database username */
define( 'DB_USER', 'user_name' );

/** Database password */
define( 'DB_PASSWORD', 'user_pass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb_kejebane' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '2J/HrVAP*Qm>2-K:dO+3JRZ)c;*;;+Q](VaR<yMw%m%+I3ququj*RfFGe/ ?jhdq');
define('SECURE_AUTH_KEY',  '](US01S5|5p>1LW9q:*$Vu+<Ky-{5;kq|e+vSnoqt>4w?HjO(++=5S>SA[Yo:z`L');
define('LOGGED_IN_KEY',    'CLJ}R-PiGm|Zj15uyM {Ch!!8,rop*~Z4TafNMR6A%rw6|FYDLjj>o4,&= &D=3j');
define('NONCE_KEY',        '*yrC0iMe+/*~CM2!x-m;v,rZ_s#HsFUt*AeYq3`?c>-*E<B^NlBUkr?AW2NHbOPX');
define('AUTH_SALT',        '[A%RV%)(usmLa/#55~`zRPfxsRfJxh5@[LA{c;vji8Q;lp607Md}cgv+EAoY+5+|');
define('SECURE_AUTH_SALT', 'ia$Q$oyduw`N~[+|_+s{,+t.mrb5#WsUIP@$[p6IQr86Zv(PBW6e2SSf|*G9D^[&');
define('LOGGED_IN_SALT',   'Ym}rij`3+1F].pB|9.7}}+`<M[_a7.7e7^($]?RYRLT,3|&Bk4f>m$R*dny*+*W(');
define('NONCE_SALT',       'sr-5R?tcH)%|kCB(gSM+ Fa(~mNG16A^/+@w.t u;qhW^;!T*f0Sk8,,RwC~|-j4');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
