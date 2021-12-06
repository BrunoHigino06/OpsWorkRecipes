exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

package { 'nginx':
  require => Exec['apt-update'],        # require 'apt-update' before installing
  ensure => installed,
}

# ensure nginx service is running
service { 'nginx':
  ensure => running,
}
