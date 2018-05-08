# == Class kerberos_server_installation::install
#
# This class is called from kerberos_server_installation for install.
#
class kerberos_server_installation::install {

  package { $::kerberos_server_installation::package_name:
    ensure => present,
  }
}
