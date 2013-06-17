class gvm::dependencies::centos {

  case $::operatingsystemrelease {
    /^6\..*/: {
      if ! defined(Package['libcurl-devel']) { package { 'libcurl-devel':      ensure => installed } }
    }
    /^5\..*/: {
      if ! defined(Package['bison'])        { package { 'bison':         ensure => installed } }
      if ! defined(Package['autoconf'])     { package { 'autoconf':      ensure => installed } }
    }
    default: {
      if ! defined(Package['curl-devel'])    { package { 'curl-devel':      ensure => installed } }
    }
  }
  if ! defined(Package['which'])           { package { 'which':           ensure => installed } }
  if ! defined(Package['wget'])            { package { 'wget':            ensure => installed } }
  if ! defined(Package['git'])             { package { 'git':             ensure => installed } }
  if ! defined(Package['unzip'])           { package { 'unzip':             ensure => installed } }
}