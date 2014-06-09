sssd

This is an sssd module for use with Puppet 3.x, though should work with previous
versions of the Puppet platform.

License
-------
Apache License version 2.0

Contact
-------
Andrew Ernst (github.com@x.getalive.com)

Operating Systems Supported
---------------------------
At this time, this module has been tested with RedHat 6.5, CentOS 6.5, and Ubuntu 13.10, 14.04 LTS

Support
-------
The home of this project is at https://github.com/ernstae/sssd

Installation
------------
Clone this module to your puppet module directory (commonly /etc/puppet/modules)

A bare minimum is to include the module like this:

'''puppet
  { "sssd" : }
'''

You can take it one step further (and should) for LDAP authentication, with your own 
site details

'''puppet
  { "sssd" :
     ldap_base => "dc=example,dc=edu",
     allow_groups => ["group1","group2"],
  }
'''

More parameters can be found in the sssd/manifests/params.pp

