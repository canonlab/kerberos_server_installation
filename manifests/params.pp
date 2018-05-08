# == Class kerberos_server_installation::params
#
# This class is meant to be called from kerberos_server_installation.
# It sets variables according to platform.
#
class kerberos_server_installation::params {
  #case $::osfamily {
  #  'Debian': {
  #    $package_name = 'kerberos_server_installation'
  #    $service_name = 'kerberos_server_installation'
  #  }
  #  'RedHat', 'Amazon': {
  #    $package_name = 'kerberos_server_installation'
  #    $service_name = 'kerberos_server_installation'
  #  }
  #  default: {
  #    fail("${::operatingsystem} not supported")
  #  }
  #}
}
