# Class: sssd::params
#
#
#
class sssd::params {
  $config_dir = '/etc/sssd'
  $config = "$config_dir/sssd.conf"
  $ldap_bind = ''
  $ldap_pass = ''
  $ldap_base = 'dc=example,dc=com'
  $ldap_user_base = 'OU=example,dc=example,dc=com'
  $ldap_servers = ['ad1.example.com',
                   'ad2.example.com']
  $allow_groups = ['nobody']
  $package_ensure = 'present'
  $service_ensure = 'running'
  $service_manage = true
  $config_template = 'sssd/sssd.conf.erb'
  
  case $::osfamily {
    'RedHat': {
      $package_name = 'sssd'
      $service_name = 'sssd'
      $cert_dir = '/etc/pki/tls/certs'
      $cert_ca_bundle = 'ca-bundle.crt'
    }
    'Debian': {
      $package_name = 'sssd'
      $service_name = 'sssd'
      $cert_dir = '/etc/ssl/certs'
      $cert_ca_bundle = 'ca-certificates.crt'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}.  SSSD can only be installed on RedHat or Debian systems")
      }
  }
}
