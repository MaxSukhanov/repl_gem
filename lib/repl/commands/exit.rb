require "command"

class Exit < Command
  def call
    exit
  end
end
