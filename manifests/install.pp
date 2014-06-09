class sssd::install {

  package { 'sssd':
    ensure => $::sssd::params::package_ensure,
    name => $::sssd::params::package_name,
  }

}
