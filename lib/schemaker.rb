module Schemaker
  class << self
    attr_accessor :log_on
    
    alias_method :log_on?, :log_on
  end
    
  autoload :Models, 'schemaker/models'
  
  autoload :BaseModel,    'schemaker/models/base_model'
  autoload :JoinModel,    'schemaker/models/join_model'
  autoload :ObjectModel,  'schemaker/models/object_model'
  autoload :SubjectModel, 'schemaker/models/subject_model'  
end