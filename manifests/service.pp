class mv_dokuwiki::service {

	service { 'mv_dokuwiki':
		name 		=> $mv_dokuwiki::service_name,
		ensure 		=> running,
		require 	=> Package['apache2','dokuwiki'],
	}
}
