#Logger class with singleton module of create a single instance for the application
require 'singleton'

class Logger
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
    p @log
    p "test"
  end

  def log(msg)
    @log.write(msg)
    p msg
  end
end
