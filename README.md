Commander
=========
Commander is a library that provides simple abstraction around Rye, leting you easily run /etc/init.d commands on a remote server.

## Usage
To take advantage of commander add the following to your Gem's gemspec:

	Gem::Specification.new do |gem|
	...
		gem.add_dependency 'commander', '*', :git => 'https://github.com/ajbonner/commander.git'
	...
	end
	
Alternatively, if you're using a Gemfile with bundler:
	 
	 gem 'commander', '*', :git => 'https://github.com/ajbonner/commander.git'
	 
As an example, let's make use of the bundled restart command and restart php5-fpm:

	require 'commander'
	
	executor = Commander::SshExecutor.new('sshhostname', 'user', 'password')
	command = Commander::Command.new(executor, 'php5-fpm', 'restart')
	command.execute # service will now be restarted
	
Here, php5-fpm is the name of a script in /etc/init.d, and 'restart' is the name of a command you can call on that script.

## Missing Features
At the moment commander does not support ssh-key based authentication and at present only bundles a restart task.
	
## Problems?
Let me know, @ajbonner on twitter, or open an issue here on github.