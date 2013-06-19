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

	exec { "install-grails":
		command => "sudo su - vagrant -c 'source /home/vagrant/.gvm/bin/gvm-init.sh && yes Y | gvm install grails'",
		cwd => "/var/tmp",
		user => "vagrant",
		logoutput => true,
		path => ["/usr/bin", "/usr/sbin", "/bin", "/home/vagrant/.gvm/bin"],
		require => Exec['install-gvm'],
	}
}