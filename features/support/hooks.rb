require File.dirname(__FILE__) + '/../../app/helpers/connect_database'
require File.dirname(__FILE__) + '/../../app/models/picture'

After do
  Picture.delete_all
end
