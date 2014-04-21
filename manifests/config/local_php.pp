define mv_dokuwiki::config::local_php (	
	$title  		= 'My Wiki', 
	$use_acl 		= 1, 
	$superuser 	= 'admin',
	$template 	= 'dokuwiki' 
) 
{
	require('mv_dokuwiki::packages')
	require('mv_dokuwiki')

    file {"${mv_dokuwiki::config_path}/conf/local.php": 
      ensure 	=> file,
      content => template("mv_dokuwiki/local.php.erb"),
      mode 	=> "0644",
      owner 	=> 'www-data',
      group 	=> 'www-data',
			require => Package['apache2','dokuwiki'],
      notify	=> Service["mv_dokuwiki"],
    }

}
