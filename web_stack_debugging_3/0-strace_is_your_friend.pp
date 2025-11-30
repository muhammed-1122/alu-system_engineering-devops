# Fixes the 500 Internal Server Error by changing the file ownership.
exec { 'fix-wordpress':
  command => '/bin/chown www-data:www-data /var/www/html/wp-settings.php',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  unless  => '/usr/bin/test "$(/usr/bin/stat -c %U /var/www/html/wp-settings.php 2>/dev/null)" != "www-data"',
}
