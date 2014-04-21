class mv_dokuwiki::config {
	require('mv_dokuwiki::packages')
	
		#file { '/var/www/dokuwiki':
		#	ensure => 'link',
		#	target => '/usr/share/dokuwiki'
		#}
}
