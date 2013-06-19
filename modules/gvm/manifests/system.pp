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

# uncomment to enable gvm to auto answer, this will make every candidate install the latest
	# $gvm_auto_answer = "/home/vagrant/.gvm/etc/config"
	# file { $gvm_auto_answer:
	# 	content => "gvm_auto_answer=true",
	# 	ensure => present,
	# }

# uncomment to install the latest version of grails
	# exec { "install-grails":
	# 	command => "sudo su - vagrant -c 'source /home/vagrant/.gvm/bin/gvm-init.sh && gvm install grails'",
	# 	cwd => "/var/tmp",
	# 	user => "vagrant",
	# 	logoutput => true,
	# 	path => ["/usr/bin", "/usr/sbin", "/bin", "/home/vagrant/.gvm/bin"],
	# 	require => [Exec['install-gvm'], File[$gvm_auto_answer]],
	# }

}
