class solka::javadev{
	stage { 'bootstrapFirst': 
		before => Stage['main'],
	}
	class{'solka::bootstrap':
		stage=>bootstrapFirst
	}
	package{'maven':
		ensure=>'present'
	}
	package{'ant':
		ensure=>'present'
	}
	package{'gradle':
		ensure=>'present'
	}
	package{'openjdk-7-jdk':
		ensure=>'present'
	}
	exec{'use-jdk-7':
		command=>'/usr/sbin/update-java-alternatives -s java-1.7.0-openjdk-amd64',
		require=>Package['openjdk-7-jdk']
	}
}