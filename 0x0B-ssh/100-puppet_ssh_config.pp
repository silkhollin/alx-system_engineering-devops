#!/usr/bin/env bash
#config management with puppet

file { 'etc/ssh/ssh_config':
	ensure => present,
content => "
	#actual ssh config 
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",

}
