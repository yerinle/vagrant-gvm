class gvm::dependencies {
  case $::operatingsystem {
    Ubuntu,Debian: { require gvm::dependencies::ubuntu }
    CentOS,RedHat: { require gvm::dependencies::centos }
  }
}