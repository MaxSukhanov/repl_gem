require "command"

class MissingCommand < Command 
  def call
    puts "Command doesn't exist"
  end
end

