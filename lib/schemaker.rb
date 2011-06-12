module Schemaker
  class << self
    attr_accessor :log_on
    
    alias_method :log_on?, :log_on
  end
    
  autoload :Models, 'schemaker/models'
end