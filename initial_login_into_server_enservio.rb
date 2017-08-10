# Initial Login executed after username and password script create)login_credentials_enservio.rb run 
# created from https://apps3test.enservio.com/myaccess/?carrier=Enservio/#/user/login
# test created by Gerry Canelli
require "selenium-webdriver"

# Sleep (3) seconds is needed in between to assure that enough time is loaded in between each step

#Chrome browser is launched
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

#Loading the URL
puts '1)Launch the Chrome Browser to the Login screen'
driver.navigate.to "https://apps3test.enservio.com/myaccess/?carrier=Enservio/#/user/login"
sleep(3)

#Click on Login link
puts '2)Click on Login link'
driver.find_element(:link, 'LOGIN').click
sleep(3)

#Fill in email input box
puts '3)Fill in email text box'
driver.find_element(:xpath, "//input[@type='email']").send_keys 'gcanelli2010@gmail.com'
sleep(3)

#Fill in password input box
puts '4)Fill in password text box'
driver.find_element(:xpath, "//input[@type='password']").send_keys 'Testing123@'
sleep(3)

#Verify Next Button is visible
puts '5)Verify Next Button is visible'
driver.find_element(:xpath, "//button[@type='submit']").displayed?
sleep(3)

#Click on Next Button 
puts '6)Click on Next Button'
driver.find_element(:xpath, "//button[@type='submit']").click
sleep(3)

#Verify New Claim Text is visible
puts '7)Verify New Claim Text is visible'
driver.find_element(:xpath, "//*[text()='New Claim']").displayed?
sleep(3)

#Quit the test, since need to verify can login into the url
puts "Quiting test, since verifying can login to the url"
sleep(1)


#Quitting the browser
driver.quit