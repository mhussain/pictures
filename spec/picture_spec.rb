require 'rubygems'
require 'spec'
require 'active_record'
require File.dirname(__FILE__) + '/../app/models/picture'

describe 'picture model' do
  it 'should have a name' do
    picture = Picture.new({:name => "picture"})
    picture.save
  end

  it "should have atleast one tag" do
    tag = "tag"
    picture = Picture.new({:name => 'picture', :tag => tag})

    picture.tag.should == tag
  end
end
