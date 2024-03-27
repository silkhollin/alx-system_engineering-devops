#!/usr/bin/env bash
#config management with puppet

file { 'etc/ssh/ssh_config':
	ensure => presen,
content => "
	#actual ssh config 
	host*
	IdentityFile ~/.ssh/school
	Passwordauthentication no
	",

}
