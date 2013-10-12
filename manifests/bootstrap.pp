class solka::bootstrap{
	require solka::apt

	package{'curl':
		ensure=>'present'
	}

	package{'vim':
		ensure=>'present'
	}
}