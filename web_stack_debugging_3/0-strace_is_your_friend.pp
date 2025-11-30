# Fixes the 500 Internal Server Error by changing the file ownership.
file { '/var/www/html/wp-settings.php':
  ensure => 'file',
  owner  => 'www-data',
  group  => 'www-data',
  mode   => '0664',
}
