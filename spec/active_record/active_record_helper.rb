require 'active_record'
require 'yaml'
require 'logger'
require 'database_cleaner'
require 'require_all'
require 'active_record/migrations/create_models'

dbconfig_path = File.dirname(__FILE__) + '/db/database.yml'
dbfile = File.open(dbconfig_path)
dbconfig = YAML::load(dbfile)  

ActiveRecord::Base.establish_connection(dbconfig)
ActiveRecord::Base.logger = Logger.new(STDERR)

DatabaseCleaner.strategy = :truncation

def migration_folder(name)
  path = File.dirname(__FILE__) + "/migrations/#{name}"
end

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.drop_tables :user_accounts, :roles, :users_roles
    CreateModels.up
  end

  config.before(:each) do    
  end

  config.after(:each) do
  end  
end
