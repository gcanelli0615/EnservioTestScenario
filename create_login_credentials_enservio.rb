# Create Login Credentials from https://apps3test.enservio.com/myaccess/?carrier=Enservio/#/user/login
# test created by Gerry Canelli
require "selenium-webdriver"

# Sleep (3) seconds is needed in between to assure that enough time is loaded in between each step

#Chrome browser is launched
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

#Loading the URL
puts '1)Launch the Chrome Browser to the New User Screen'
driver.navigate.to "https://apps3test.enservio.com/myaccess/?carrier=Enservio/#/user/login"
sleep(3)

#Click on New User
puts '2)Click on New User link'
driver.find_element(:link, 'NEW USER').click
sleep(3)

#Fill in email input box
puts '3)Fill in email text box'
driver.find_element(:id, 'email').send_keys 'gcanelli2010@gmail.com'
sleep(3)

#Fill in Choose a password input box
puts '4)Fill in choose password text box'
driver.find_element(:id, 'uPassword').send_keys 'Testing123@'
sleep(3)    

#Fill in Confirm password input box
puts '5)Fill in Confirm password text box'
driver.find_element(:id, 'uConfirmPassword').send_keys 'Testing123@'
sleep(3)

#Verify Password Rules
puts '6a)Verify Passwords must match check'
driver.find_element(:xpath, "//li[@id='match' and @class='passed']").displayed?
sleep(3)

puts '6b)Verify Passwords Is between 8-50 characters'
driver.find_element(:xpath, "//li[@id='length' and @class='ng-binding ng-scope passed']").displayed?
sleep(3)

puts '6c)Verify Passwords Has at least 1 capital letter'
driver.find_element(:xpath, "//li[@id='maxUpperCase' and @class='ng-binding ng-scope passed']").displayed?
sleep(3)

puts '6d)Verify Passwords Has at least 1 lower case letter'
driver.find_element(:xpath, "//li[@id='minLowerCase' and @class='ng-binding ng-scope passed']").displayed?
sleep(3)

puts '6e)Verify Passwords Has at least 1 number'
driver.find_element(:xpath, "//li[@id='minNumerals' and @class='ng-binding ng-scope passed']").displayed?
sleep(3)

puts '6f)Verify Passwords Has at least 1 of the following characters'
driver.find_element(:xpath, "//li[@id='minSpecial' and @class='ng-binding ng-scope passed']").displayed?
sleep(3)

#Click on Show Password radio button
puts '7)Click on Show Password radio button'  
driver.find_element(:id, 'chkSP').click  
sleep(3)

#Unclick on Show Password radio button
puts '8)Unclick on Show Password radio button'  
driver.find_element(:id, 'chkSP').click 
sleep(3)

#Click on radio button - I Agree to the Terms & Conditions
puts '9)Click on radio button - I Agree to the Terms & Conditions'
driver.find_element(:id, 'agree').click
sleep(3)

#Verifies Sign Up Button is visible
puts '10)Verifies Sign Up button is visible'
driver.find_element(:xpath, "//button[@type='submit']").displayed?
sleep(3)

#Click on the Sign up Button
puts '11)Click on the Sign Up Button'
driver.find_element(:xpath, "//button[@type='submit']").click
sleep(3)

#Quitting the browser
puts '12) Closing Chrome Web Browser'
driver.quit