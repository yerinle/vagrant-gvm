class gvm::dependencies::ubuntu {
  if ! defined(Package['curl'])                 { package { 'curl':                 ensure => installed } }
  if ! defined(Package['git-core'])             { package { 'git-core':             ensure => installed } }
  if ! defined(Package['unzip'])                { package { 'unzip':             ensure => installed } }
}
