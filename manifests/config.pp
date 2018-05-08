# == Class kerberos_server_installation::config
#
# This class is called from kerberos_server_installation for service config.
#
class kerberos_server_installation::config {
  file { '/etc/krb5.conf':
    ensure  => file,
    content => template('kerberos_server_installation/krb5.cfg.erb'),
  }
}
