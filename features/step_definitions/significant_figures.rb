Given /^a number (.*)$/ do |x|
  @number = x
end

And /^an amount of sigfigs, (.*)$/ do |x|
  @sigfigs = x.to_i
end

Then /^I should get a result of (.*)$/ do |x|
  result = @number.sigfigs(@sigfigs)
  result == x
end