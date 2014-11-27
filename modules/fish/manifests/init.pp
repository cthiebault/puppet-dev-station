class fish {

  include 'apt'
  include 'git'

  File {
    owner => $real_id,
    group => $real_id
  }

  apt::source { 'fish-shell-release-2':
    location    => 'http://ppa.launchpad.net/fish-shell/release-2/ubuntu',
    release     => 'trusty',
    repos       => 'main',
    include_src => true,
    key         => '6DC33CA5',
    key_server  => 'keyserver.ubuntu.com'
  }
  ->
  package { 'fish' :
    ensure => 'installed'
  }
  ->
  # install fish as the default shell
  user { $real_id:
    ensure     => present,
    shell      => "/usr/bin/fish",
    managehome => true,
  }
  ->
  vcsrepo { "${home}/.oh-my-fish":
    ensure   => present,
    provider => git,
    source   => "https://github.com/cthiebault/oh-my-fish.git",
  }
  ->
  file { "${home}/.config/fish":
    ensure => 'directory'
  }
  ->
  file { "${home}/.config/fish/config.fish":
    ensure => 'present',
    source => "${home}/.oh-my-fish/templates/config.fish",
  }
}