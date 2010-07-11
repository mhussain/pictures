require 'active_record'

class Picture < ActiveRecord::Base

  set_table_name 'picture'

  attr_reader :name, :tag

  def initialize params=nil
    super(params)
    @name = params[:name]
    @tag = params[:tag]
  end

  def set_name name
    @name = name
  end

  def set_tag tag
    @tag = tag
  end
end
