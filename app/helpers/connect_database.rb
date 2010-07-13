require 'active_record'

module ConnectDatabase

  development_config = YAML::load(
    File::open( File.dirname(__FILE__) + '/../../config/database.yml')
  )

  env = ENV['RAILS_ENV'] || 'development'

  ActiveRecord::Base.establish_connection(
    development_config[env]
  )
end
