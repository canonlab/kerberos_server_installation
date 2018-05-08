# == Class kerberos_server_installation::service
#
# This class is meant to be called from kerberos_server_installation.
# It ensure the service is running.
#
class kerberos_server_installation::service {

  #service { $::kerberos_server_installation::service_name:
  #  ensure     => running,
  #  enable     => true,
  #  hasstatus  => true,
  #  hasrestart => true,
  #}
}
