class gocd::params {

  $download_root = '/vagrant/files'

  case $::osfamily {
    'Debian': {
      $server_install_url = 'http://download.go.cd/gocd-deb/go-server-14.2.0-377.deb'
      $server_installer  = "${download_root}/go-server-14.2.0-377.deb"
      $agent_install_url = 'http://download.go.cd/gocd-deb/go-agent-14.2.0-377.deb'
      $agent_installer   = "${download_root}/go-agent-14.2.0-377.deb"
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
