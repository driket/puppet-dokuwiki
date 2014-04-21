# configuer le produit ici
class mv_dokuwiki::params {

	$packages 				= ['apache2','dokuwiki']
	$service_name 			= 'apache2'
	$config_path 			= '/var/www/dokuwiki'
}
