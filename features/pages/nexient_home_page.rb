require 'selenium-webdriver'

class NexientHomePage < Base_page
  def click_on_specific_menu_item(menu_item_name)
    locator = "(//a[contains(text(), '" + menu_item_name + "')])[1]"
    self.click_on_element(locator)
  end
end