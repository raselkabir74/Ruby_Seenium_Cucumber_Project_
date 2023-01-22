require "rubygems"
require "selenium-webdriver"
require 'json'

Before do |scenario|
  options = Selenium::WebDriver::Chrome::Options.new
  # options.add_argument('--headless')
  options.add_argument('--disable-gpu')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-popup-blocking')

  browser = Selenium::WebDriver.for :chrome, capabilities: options
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  $browser = browser
  $browser.manage.window.maximize
  $wait = wait

  file = File.read('./global.json')
  config = JSON.parse(file)
  $config = config
end

After do |scenario|
  $browser.quit
end

$report_path = "HTML_REPORT"
AfterStep do |scenerio|
  if scenerio.failed?
    sleep 0.5
    file = Tempfile.new(["screenshot_", ".png"], $report_path)
    screenshot = file.path
    file.close(true)
    $browser.driver.save_screenshot(screenshot)
    attach "#{screenshot}", "image/png"
  end
end