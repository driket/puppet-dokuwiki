define mv_dokuwiki::config::users_auth ( $users = [] ) {
	require('mv_dokuwiki::packages')
	require('mv_dokuwiki')

    file {"${mv_dokuwiki::config_path}/conf/users.auth.php": 
        ensure 	=> file,
        content => template("mv_dokuwiki/users.auth.php.erb"),
        mode 	=> "0644",
        owner 	=> 'www-data',
        group 	=> 'www-data',
				require => Package['apache2','dokuwiki'],
        notify	=> Service["mv_dokuwiki"],
    }

}
