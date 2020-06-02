require 'calabash-android/calabash_steps'

Then /^I long press “([^\”]*)”$/ do |text|; end

Then /^I should see "([^\"]*)" (un)?checked$/ do |label, un|
    sel = query("button marked:'#{label}'", :isSelected)[0]
    if un.nil?
      screenshot_and_raise "Expected check button checked" if sel == '0'
    else
      screenshot_and_raise "Expected check button unchecked" if sel == '1'
    end
  end