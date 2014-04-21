class mv_dokuwiki::packages {
	require('mv_dokuwiki::params')

	package {['apache2','dokuwiki']:
		ensure 	=> present,
	}

}
