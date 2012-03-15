Given /^I provide valid login details$/ do
  step "I type \"gregorystest\" into the \"Username\" text field"
  step "I type \"testing123\" into the \"Password\" text field"
  step "I touch \"Login\""
end

Then /^I should successfully login$/ do
  step "I should see \"Logged in\""
end

Then /^I should not see the password text$/ do
  step "I should not see \"testing123\""
end

