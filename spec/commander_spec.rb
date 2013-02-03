require 'spec_helper'
require 'commander'

describe Rye::Cmd, '#restart' do
  it "should exist" do
    box = Rye::Box.new
    box.respond_to?(:restart).should be_true
  end

  it "should raise ArgumentError if no command passed in" do
    box = Rye::Box.new
    expect {box.restart }.to raise_error("Missing command name argument")
  end
end

describe Commander do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
  end

describe Commander::Command, '#execute' do
  it "should execute a command with supplied executor" do
    executor = mock(Rye::Box)
    executor.should_receive(:restart).with('php5-fpm').and_return(true)
    command = Commander::Command.new(executor, 'php5-fpm', :restart)
    command.execute.should be_true
  end
end