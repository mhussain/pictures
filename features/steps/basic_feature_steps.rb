require File.dirname(__FILE__) + '/../../app/models/picture'

Given /^I have a picture called "([^\"]*)"$/ do |name|
  picture = Picture.create({:name => name})
  picture.save
end

When /^I search for a picture with name "([^\"]*)"$/ do |name|
  @count = Picture.count(:conditions => {:name => name})
  @picture = Picture.find(:first, :conditions => {:name => name})
end

Then /^I should see get "([^\"]*)" picture with name "([^\"]*)"$/ do |count, name|
  @count.should == count.to_i
  @picture.name.should == name
end
