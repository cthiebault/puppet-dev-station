class setup::git {

  require 'git'

  git::config { 'user.name':
    value => 'Cedric Thiebault',
  }
  git::config { 'user.email':
    value => 'cedric.thiebault@gmail.com',
  }
  package { ['git-gui', 'gitk'] :
    ensure => installed,
  }

}