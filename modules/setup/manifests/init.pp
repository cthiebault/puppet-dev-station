class setup {

  include 'setup::packages'
  include 'setup::git'
  include 'fish'
  include 'terminator'
  include 'java::java_8'
  include 'ide::sublimetext'

}