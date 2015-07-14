# Manage nginx webserver
class nginx {
package { 'nginx':
ensure => installed,
}
service { 'nginx':
ensure => running,
require => Package['nginx'],
}
file { '/etc/nginx/sites-enabled/default':
source => 'puppet:///modules/nginx/cat-pictures.conf',
notify => Service['nginx'],
}
}
