name             'devbox'
maintainer       'Adam Edwards'
maintainer_email 'adamedx'
license          'Apache 2.0'
description      'Installs/Configures devbox'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.24'
depends          'git'
depends          'chocolatey'
depends          'build-essential'
depends          'windows'
depends          'apt'

supports         'windows'
supports         'ubuntu'
supports         'mac_os_x'
supports         'centos'

