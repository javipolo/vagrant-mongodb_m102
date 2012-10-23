class basic_server {

  # Management tools
  package { vim: ensure => installed }
  package { screen: ensure => installed }
  package { less: ensure => installed }
  
  # System tools
  package { lvm2: ensure => installed }
  package { xfsprogs: ensure => installed }

  # Config files

  # Vim
  file { "vimrc.local":
    ensure  => present,
    path    => "/etc/vim/vimrc.local",
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/basic_server/vimrc',
  }

  # Screen
  file { "screenrc":
    ensure  => present,
    path    => "/etc/screenrc",
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/basic_server/screenrc',
  }

}
