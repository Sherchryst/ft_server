<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Gn{{Rq,:LGmsYy.t$9_37^GB-+t,8oHiYKF+ixACP(~(w5%l-O;@w]0kd#MDGsCQ');
define('SECURE_AUTH_KEY',  'd-%^Vvp,&|#*AnN::ZiVsP2?RviYft m/QA{)XuW2~JarM*x@-sv`3=mu|5g2(mt');
define('LOGGED_IN_KEY',    'GrvH<0IPXP[AM<n/lLY1+-;C|m)K|2QTZ_+xFQ{*`,)`6xM$|H=4rB?JbsCncwJ-');
define('NONCE_KEY',        '8OAS-l?fg$@,/fQ= h&&MZ-$<i+S:TTeOsitB)A<c`f,> i}1U]Trj T_bTH:l}?');
define('AUTH_SALT',        '`tlOkzXs** dg3}44>Qv a3:5_^95mv22AtRGrCq4E!n-*/AFQAES67iU0b~|+MJ');
define('SECURE_AUTH_SALT', 'j>G0rs<R@G;L8E{6<)RYNj+/MX:2fULn_)?+)Xz:F1-VUI)4|1g{VMgHw]2Ut0-1');
define('LOGGED_IN_SALT',   ')l:+}I~k%2u#yw`s[`<< R2Awts+d!lBYTWH#JX<ZvH5}LPR5p81=)EN{xbFqL{+');
define('NONCE_SALT',       '@-O(q|;>TJFRb9$-* z@ifM!jR8|jTn6vqBv~y tzP+{Fr73X8Uen^Ethj:m^d@%');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

