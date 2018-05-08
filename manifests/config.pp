# == Class kerberos_server_installation::config
#
# This class is called from kerberos_server_installation for service config.
#
class kerberos_server_installation::config {
  file { '/etc/krb5.conf':
    ensure  => file,
    content => template('kerberos_server_installation/krb5.cfg.erb'),
  }

  file { '/var/kerberos/krb5kdc/kdc.conf':
    ensure  => file,
    content => template('kerberos_server_installation/kdc.conf.erb'),
  }

  file { '/var/kerberos/krb5kdc/kadm5.acl':
    ensure  => file,
    content => template('kerberos_server_installation/kadm5.acl.erb'),
  }

  file { '/tmp/krb_server_install.rb':
    ensure  => file,
    content => template('kerberos_server_installation/krb_server_install.rb.erb'),
  }
}
