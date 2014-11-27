class ide::sublimetext {

  include 'apt'

  apt::source { 'webupd8team-sublime-text':
    location    => 'http://ppa.launchpad.net/webupd8team/ubuntu/sublime-text-3',
    release     => 'trusty',
    repos       => 'main',
    include_src => true,
    key         => 'EEA14886',
    key_server  => 'keyserver.ubuntu.com'
  }
  ->
  package { 'sublime-text-installer' :
    ensure => 'installed'
  }

}