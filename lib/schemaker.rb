require 'sweetloader'

module Schemaker
  autoload_modules :Models

  class << self
    attr_accessor :log_on    
    alias_method :log_on?, :log_on
  end    
end
