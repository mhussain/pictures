require File.dirname(__FILE__) + '/../../app/models/picture'

Given /^I have a picture called "([^\"]*)" with tag "([^\"]*)"$/ do |name, tag|
  picture = Picture.create({:name => name, :tag => tag})
  picture.save
end
