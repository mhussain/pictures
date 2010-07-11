require File.dirname(__FILE__) + '/../../app/models/picture'

Given /^I have a picture$/ do
  @picture = Picture.new
end

When /^I set its name as "([^\"]*)"$/ do |name|
  @picture.set_name(name)
end

Then /^I can see its ext as "([^\"]*)"$/ do |ext|
  @picture.ext.should == ext
end
