require 'rubygems'
require 'spec'
require 'active_record'
require File.dirname(__FILE__) + '/../app/models/picture'


describe 'picture model' do
  it 'should have a name' do
    picture = Picture.new({:name => "picture"})
    picture.save!
    Picture.find(:first, :conditions => {:name => "picture"}).name.should == picture.name
  end

  it "should have atleast one tag" do
    tag = "tag"
    picture = Picture.create({:name => 'picture', :tag => tag})
    picture.save!

    Picture.find(:first, :conditions => {:tag => tag}).tag.should == picture.tag
  end

  after(:each) do
    Picture.delete_all
  end
end
