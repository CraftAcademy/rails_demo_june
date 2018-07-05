Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
end

Then("there should be an new article in the database") do
    expect(Article.count).to eq 1
end