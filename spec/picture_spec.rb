require 'rubygems'
require 'spec'
require File.dirname(__FILE__) + '/../app/models/picture'

describe 'picture model' do
    it 'should have a name' do
        Picture.new('picture').name.should == 'picture'
    end

    it "should have atleast one tag" do
        tag = "tag"
        picture = Picture.new('picture', tag)

        picture.tag.should == tag
    end

    it "should be able to get extension based on name" do
        name = "picture.png"
        Picture.new(name).ext.should == 'png'
    end
end
