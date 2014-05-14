name             'dotenv'
maintainer       'Rune Skjoldborg Madsen'
maintainer_email 'rune@runemadsen.com'
license          'Apache 2.0'
description      'Do stuff with .env files'
long_description 'Do stuff with .env files'
version          '0.0.2'
%w[ debian ubuntu centos redhat fedora scientific suse amazon].each do |os|
  supports os
end