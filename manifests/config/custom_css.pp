define mv_dokuwiki::config::custom_css ( $wikilink1, $wikilink2 ) {
	require('mv_dokuwiki::packages')
	require('mv_dokuwiki')

  file {"${mv_dokuwiki::config_path}/conf/userstyle.css": 
  	ensure 	=> file,
    content => template("mv_dokuwiki/userstyle.css.erb"),
    mode 	=> "0644",
    owner 	=> 'www-data',
    group 	=> 'www-data',
		require => Package['apache2','dokuwiki'],
    notify	=> Service["mv_dokuwiki"],
  }

}
