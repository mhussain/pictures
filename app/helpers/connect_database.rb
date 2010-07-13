require 'active_record'
module ConnectDatabase
  ActiveRecord::Base.establish_connection(
    :adapter => "mysql",
    :host => "localhost",
    :database => "personal"
  )
end
