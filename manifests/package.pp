class libnss_ldap::package(
  String $version = 'installed',
){

  package { 'libnss-ldap':
    ensure  => $version,
    require => Package['nscd'],
  }

  package { 'nscd':
    ensure => installed,
  }

  service { 'nscd':
    ensure  => running,
    enable  => true,
    require => Package['nscd'],
  }

}
