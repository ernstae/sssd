class sssd::config inherits sssd {

  file { $config_dir:
    ensure => directory,
    owner => 0,
    group => 0,
    mode => '0750',
  }
  
  file { $config:
    ensure => file,
    owner => 0,
    group => 0,
    mode => '0640',
    content => template($config_template),
  }
    
  

}
