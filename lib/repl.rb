require "version"
require "commands_resolver"

module Repl
  class Console
    PROMPT = "> ".freeze

    def initialize
      @resolver = CommandsResolver.new
    end

    def self.run
      new.run
    end

    def run
      loop do
        print PROMPT
        resolver.resolve(gets.chomp)
      end
    end

    private 

    attr_reader :resolver
  end
end
