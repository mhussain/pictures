require File.dirname(__FILE__) + '/../../app/models/picture'

Given /^I have a picture called "([^\"]*)"$/ do |name|
  picture = Picture.create({:name => name})
  picture.save
end

When /^I search for a picture with "([^\"]*)" "([^\"]*)"$/ do |field, value|
  @count = Picture.count(:conditions => {field.to_sym => value})
  @picture = Picture.find(:first, :conditions => {field.to_sym => value})
end

Then /^I should get "([^\"]*)" picture with the name "([^\"]*)"$/ do |count, name|
  @count.should == count.to_i
  @picture.name.should == name
end
