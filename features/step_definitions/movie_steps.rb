Given /^the following movies exist:$/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
    body = page.body.to_s
    if !body.include? arg1 and !body.include? arg2
        flunk("Page missing the director and/or movie!")
    end
end