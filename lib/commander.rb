require 'commander/version'
require 'rye'
require 'awesome_print'

module Rye::Cmd
  def restart(*args)
    raise ArgumentError.new("Missing command name argument") if args.empty?
    run_command('/etc/init.d/' + args[0],  'restart')
  end
end

module Commander
  class SshExecutor
    def SshExecutor.create(host, username, password)
      Rye::Box.new(host, { :user => username, :password => password, :sudo => true })
    end
  end

  class Command
    def initialize(executor, service_name, command_name)
      @executor = executor
      @service_name = service_name
      @command_name = command_name
    end

    def execute
      # dynamically send a message on our executor to execute @command_name on @service_name
      @executor.send(@command_name.to_sym, @service_name)
    end
  end
end