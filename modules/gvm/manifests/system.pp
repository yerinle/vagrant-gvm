# install gvm
class gvm::system {

	$home_sh = "/etc/profile.d/home.sh"
	file { $home_sh:
	  ensure => present,
	  content => "export HOME=/home/vagrant",
	  owner => "vagrant",
	  group => "vagrant",
	}
	
	exec { "install-gvm":
		command => "curl -s get.gvmtool.net | bash",
		cwd => "/var/tmp",
		user => "vagrant",
		logoutput => true,
		path => ["/usr/bin", "/usr/sbin", "/bin"],
		require => File[$home_sh]
	}


}