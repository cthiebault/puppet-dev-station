user { 'cthiebault':
  ensure     => 'present',
  managehome => true,
}

import 'init.pp'