class gocd
inherits gocd::params {
  ensure_packages('unzip','openjdk-7-jre','apache2')


  wget::fetch { $server_install_url :
    destination => $server_installer,
    before => Package['gocd-server'],
  }

  wget::fetch { $agent_install_url :
    destination => $agent_installer,
    before => Package['gocd-agent'],
  }

  package { 'gocd-server':
    ensure => installed,
    source => $server_installer,
    provider => 'dpkg',
    require => Package['unzip','openjdk-jre','apache2']
  }

  package { 'gocd-server':
    ensure => installed,
    source => $server_installer,
    provider => 'dpkg',
    require => Package['unzip','openjdk-jre','apache2']
  }

}
