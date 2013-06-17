include gvm

exec { "apt-get update":
      command => "apt-get update",
      cwd => "/var/tmp",
      path    => ["/usr/bin", "/usr/sbin"],
      logoutput => true,
      before => Class['java']
}

class { 'java':
  distribution => 'jdk',
  version      => 'latest',
}