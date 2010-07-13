require File.dirname(__FILE__) + '/../../app/models/picture'

Given /^I have no pictures$/ do
  Picture.delete_all
end
