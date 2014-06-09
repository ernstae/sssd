class sssd::service inherits sssd {

  if ! ( $service_ensure in [ 'running', 'stopped' ] ) {
    fail('service_ensure parameter must be running or stopped')
  }
  
  if $service_manage == true {
    service { 'sssd':
      ensure => $service_ensure,
      enable => $service_enable,
      name => $service_name,
    }
  }
}
