require 'selenium-webdriver'

class Base_page
  def click_on_element(locator)
    element = $wait.until { $browser.find_element(:xpath, locator) }
    element.click
  end

  def set_value_into_element(locator, value)
    element = $wait.until { $browser.find_element(:xpath, locator) }
    element.send_key(value)
  end

  def set_value_into_input_field(field_name, value)
    locator = "//span[contains(text(), '" + field_name + "')]/../..//input"
    set_value_into_element(locator, value)
  end

  def switch_to_ifrmae(frame_id)
    $browser.switch_to.frame $browser.find_element(:id, "#{frame_id}")
  end

  def switch_to_default_content()
    $browser.switch_to.default_content
  end

  def select_radio_button(button_name)
    locator = "(//label[contains(text(), '" + button_name + "')]/..//input)[1]"
    click_on_element(locator)
  end

  def select_dropdown_item(select_id, item_name)
    Selenium::WebDriver::Support::Select.new(
      $browser.find_element(:id, "#{select_id}")
    ).select_by(:text, "#{item_name}")
  end

  def get_text_from_element(locator)
    element = $wait.until { $browser.find_element(:xpath, locator) }
    element.text
  end

  def is_element_available(locator, time_out = 5)
    wait = Selenium::WebDriver::Wait.new(:timeout => time_out)
    begin
      wait.until { $browser.find_element(:xpath, locator) }
      return true
    rescue RuntimeError
      return false
    end
  end

  def is_checkbox_selected(checkbox_name, time_out = 5)
    locator = "//span[contains(text(), '" + checkbox_name + "')]/..//input"
    wait = Selenium::WebDriver::Wait.new(:timeout => time_out)
    begin
      element = wait.until { $browser.find_element(:xpath, locator) }
      return element.selected?
    rescue RuntimeError
      return false
    end
  end
end