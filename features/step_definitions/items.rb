Given(/^I am on the item index page$/) do
  visit "/items"
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |item1, item2|
  expect(page).to have_content(item1)
  expect(page).to have_content(item2)
end

Given /^an item with name "(.*?)" and description "(.*?)"$/ do |name, description|
  @post = FactoryGirl.create(:item, name: name, description: description)
end

Given /^(?:|[tT]he )?following item[s]?(?: exist[s]?)?:$/ do |table|
  table.hashes.each do |hash|
    step %{an item with name "#{hash['name']}" and description "#{hash['description']}"}
  end
end

