class ide::intellij {

  file { "${home}/programs":
    ensure => 'directory'
  }
  ->
  archive { 'ideaIU':
    ensure => present,
    url    => 'http://download-cf.jetbrains.com/idea/ideaIU-14.0.1.tar.gz',
    target => "${home}/programs",
  }

}