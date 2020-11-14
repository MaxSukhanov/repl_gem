require "command"

class Help < Command
  def call
    puts "Available commands: "
    resolver.command_names.map { |name| puts "    * #{name}" }
  end
end
