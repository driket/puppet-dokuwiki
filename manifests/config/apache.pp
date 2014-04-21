define mv_dokuwiki::config::apache (	
	$app_path 			= $mv_dokuwiki::config_path, 
	$admin_contact 	= "webmaster@dokuwiki.example.com",
) 
{
	require('mv_dokuwiki::packages')
	require('mv_dokuwiki')

  file { "/etc/apache2/sites-available/default": 
  	ensure => file,
  	mode => "0644",
  	owner => 'root',
  	group => 'root',
		content => template("mv_dokuwiki/default.erb"),
		require => Package['apache2','dokuwiki'],
		notify => Service['mv_dokuwiki'],
  }	

}
