# Class: kerberos_server_installation
# ===========================
#
# Full description of class kerberos_server_installation here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class kerberos_server_installation (
  $package_name = $::kerberos_server_installation::params::package_name,
  $service_name = $::kerberos_server_installation::params::service_name,
) inherits ::kerberos_server_installation::params {

  # validate parameters here

  class { '::kerberos_server_installation::install': } ->
  class { '::kerberos_server_installation::config': } ~>
  class { '::kerberos_server_installation::service': } ->
  Class['::kerberos_server_installation']
}
