When("I visit the site") do
    visit '/'
end

Given("I click on {string}") do |element|
    click_on element
end

Given("I fill in {string} with {string}") do |field_name, content|
    fill_in field_name, with: content
end



Then("show me the page") do
    save_and_open_page
end
  
