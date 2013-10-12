class solka::apt{

	file{'/etc/apt/sources.list':
		source=>'puppet:///modules/solka/sources.list'
	}

	exec{'apt-update':
		command=>'/usr/bin/apt-get update',
		require=>File['/etc/apt/sources.list']
	}

}