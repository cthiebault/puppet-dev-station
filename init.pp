package { ['htop', 'vim'] :
  ensure => installed,
}


include git

git::config { 'user.name':
  value => 'Cedric Thiebault',
}

git::config { 'user.email':
  value => 'cedric.thiebault@gmail.com',
}