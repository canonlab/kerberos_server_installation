# == Class kerberos_server_installation::install
#
# This class is called from kerberos_server_installation for install.
#
class kerberos_server_installation::install {

  package { "krb5-server":
    ensure => present,
  }

  package { "krb5-libs":
    ensure => present,
  }

}
