# Class: libnss_ldap
# ===========================
#
# Class to install and manage libnss-ldap
#
# Examples
# --------
#
# @example
#    class { 'libnss_ldap':
#      version => 'latest',
#      config => {
#
#      }
#    }
#
# Authors
# -------
# Raza Jhaveri

class libnss_ldap(
  String $version           = 'installed',
  Hash $config              = {},
  Hash $nss_map_attributes  = {},
  Hash $nss_map_objectclass = {},
) {

    class { '::libnss_ldap::package':
      version => $version,
    }

    class { '::libnss_ldap::config':
      config              => $config,
      nss_map_attributes  => $nss_map_attributes,
      nss_map_objectclass => $nss_map_objectclass,
    }

}
