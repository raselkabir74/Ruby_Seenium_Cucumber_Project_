api_page = ApiPage.new

Given('I am on the Reqres home page') do
  $browser.navigate.to $config['api_base_url']
  puts "Successfully launched Reqres home page"
end

Then('Create new user with username as {string} and job as {string}') do |username, job|
  @username = username
  @job = job
  @request = api_page.create_single_user_using_api(username, job)
  @body = JSON.parse(@request.body)
  puts @request.body
end

Then('Verifying the response code after creating new user') do
  expect(@request.code).to eql(201)
end

Then('Verifying the username after creating new user') do
  expect(@body['name']).to eql(@username)
end

Then('Verifying the job after creating new user') do
  expect(@body['job']).to eql(@job)
end
