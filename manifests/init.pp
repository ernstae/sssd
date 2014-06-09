# == Class: sssd
#
# Installs and Maintains the SSSD configuration per the IHME environment
#
# === Parameters
#
## === Authors
#
# Andrew Ernst <ernst@uw.edu>
#
# === Copyright
#
# Copyright 2014 University of Washington, Andrew Ernst
#
class sssd (
  $package_name = $sssd::params::package_name,
  $config_dir = $sssd::params::config_dir,
  $config = $sssd::params::config,
  $ldap_bind = $sssd::params::ldap_bind,
  $ldap_pass = $sssd::params::pass,
  $ldap_base = $sssd::params::ldap_base,
  $ldap_user_base = $sssd::params::ldap_user_base,
  $ldap_servers = $sssd::params::ldap_servers,
  $allow_groups = $sssd::params::allow_groups,
  $package_ensure = $sssd::params::package_ensure,
  $service_ensure = $sssd::params::service_ensure,
  $service_manage = $sssd::params::service_manage,
  $config_template = $sssd::params::config_template  ) inherits sssd::params {
  
  anchor { 'sssd::begin': } ->
  class { '::sssd::install' : } ->
  class { '::sssd::config' : } ->
  class { '::sssd::service' : } ->
  anchor { 'sssd::end' : }
  
  
  }
