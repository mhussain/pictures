require 'active_record'

class Picture < ActiveRecord::Base

  set_table_name 'picture'

  def initialize
    super
  end

  def set_name name
    @name = name
    @ext = @name.scan(/\w*$/).first or nil
  end

  def set_tag tag
    @tag = tag
  end

  def set_ext ext
    @ext = ext
  end
end
