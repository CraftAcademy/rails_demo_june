Given("the following articles exist in our database") do |table|
   table.hashes.each do |article_hash|
    Article.create(article_hash)
   end
end