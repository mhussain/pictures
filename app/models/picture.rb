require File.dirname(__FILE__) + '/../helpers/connect_database'

class Picture < ActiveRecord::Base

  set_table_name 'picture'
end
