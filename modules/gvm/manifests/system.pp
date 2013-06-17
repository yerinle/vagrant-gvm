# install gvm
class gvm::system {

	exec { "install-gvm":
		command => "sudo su - vagrant -c 'curl -s get.gvmtool.net | bash'",
		cwd => "/var/tmp",
		user => "vagrant",
		logoutput => true,
		path => ["/usr/bin", "/usr/sbin", "/bin"],
		require => Class['java'],
	}
}