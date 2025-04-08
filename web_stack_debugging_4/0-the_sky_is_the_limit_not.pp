# puppet script to increase user limit for max open files per process to handle more connections

exec { 'increase user-limit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx; sudo service nginx restart',
  path    => '/usr/bin/:/usr/sbin:/bin/'
}