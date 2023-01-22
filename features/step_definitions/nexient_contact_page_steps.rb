base_page = Base_page.new
nexient_contact_page = NexientHomePage.new

Given(/^I am on the Nexient home page$/) do
  $browser.navigate.to $config['url']
  puts "Successfully launched Nexient home page"
end

Then('I am clicking on the {string} menu') do |menu_name|
  nexient_contact_page.click_on_specific_menu_item(menu_name)
end

Then('Entering the first name as {string}') do |first_name|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.set_value_into_input_field(NexientContactPageLocators.new.first_name_label, first_name)
  base_page.switch_to_default_content
end

Then('Entering the last name as {string}') do |last_name|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.set_value_into_input_field(NexientContactPageLocators.new.last_name_label, last_name)
  base_page.switch_to_default_content
end

Then('Selecting area of interest as {string}') do |area_of_interest|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.select_dropdown_item(NexientContactPageLocators.new.area_of_interest_id, area_of_interest)
  base_page.switch_to_default_content
end

Then('Entering the company email as {string}') do |email|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.set_value_into_input_field(NexientContactPageLocators.new.company_email_label, email)
  base_page.switch_to_default_content
end

Then('Entering the company name as {string}') do |company_name|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.set_value_into_input_field(NexientContactPageLocators.new.company_name_label, company_name)
  base_page.switch_to_default_content
end

Then('Entering the phone number as {string}') do |phone_number|
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  base_page.set_value_into_input_field(NexientContactPageLocators.new.phone_number_label, phone_number)
  base_page.switch_to_default_content
end

Then('Verifying I have read checkbox is not selected') do
  base_page.switch_to_ifrmae(NexientContactPageLocators.new.hs_form_iframe_0_id)
  expect(base_page.is_checkbox_selected(NexientContactPageLocators.new.i_have_read_label)).to be false
  base_page.switch_to_default_content
end
