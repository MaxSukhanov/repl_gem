require "command"

class About < Command
  def call
    puts "Repl version #{Repl::VERSION}"
  end
end
