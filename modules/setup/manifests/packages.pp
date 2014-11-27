class setup::packages {

  package { ['htop', 'vim'] :
    ensure => installed,
  }

}