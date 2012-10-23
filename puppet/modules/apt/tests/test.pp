# The Puppet Labs APT source and gpg key.
apt::source { 'puppetlabs':
  location   => 'http://apt.puppetlabs.com',
  repos      => 'main',
  key        => '4BD6EC30',
  key_server => 'pgp.mit.edu',
}

