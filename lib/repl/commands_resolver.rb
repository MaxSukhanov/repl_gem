require "commands/about"
require "commands/help"
require "commands/exit"
require "commands/missing_command"

module Repl
  class CommandsResolver
    attr_reader :commands

    def initialize
      @commands = Hash.new(MissingCommand.new(self))
      register("about", About)
      register("help", Help)
      register("exit", Exit)
    end

    def resolve(command)
      commands[command].call
    end

    def command_names
      commands.keys
    end

    def register(command, klass)
      commands[command] = klass.new(self)
    end

    private 

    def has_command?(command)
      commands.include?(command)
    end
  end
end
