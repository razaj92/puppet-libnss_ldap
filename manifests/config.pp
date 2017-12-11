class libnss_ldap::config(
  Hash $config              = {},
  Hash $nss_map_attributes  = {},
  Hash $nss_map_objectclass = {},
){

  file { '/etc/ldap.conf':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template( "${module_name}/ldap.conf.erb" ),
    notify  => Service['nscd'],
  }

}
