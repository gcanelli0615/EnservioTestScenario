This UI tests were created and tested with the following setup:

1) Windows 7 Professional Operating System
2) Ruby Version 2.4.1p111
3) Selenium-webdriver version 3.4.4
4) ChromeDriver 2.31.488763
5) Google Chrome Browser version 60.0.3112.90 (64-bit)

The following test case(s) were created

1) create_login_credentials_enservio.rb

*Note* if any of these steps fail, the testcase will not continue
Following Steps were created in the testcase => 

	1)Launch the Chrome Browser URL 

	2)Click on New User link

	3)Fill in email input box

	4)Fill in Choose a password input box

	5)Fill in Confirm password input box

	6a)Verify Password Rules

	6b)Verify Passwords Is between 8-50 characters

	6c)Verify Passwords Has at least 1 capital letter

	6d)Verify Passwords Has at least 1 lower case letter

	6e)Verify Passwords Has at least 1 number

	6f)Verify Passwords Has at least 1 of the following characters

	7)Click on Show Password radio button

	8)Unclick on Show Password radio button 

	9)Click on radio button - I Agree to the Terms & Conditions

    10)Verifies Sign Up button is visible

    11)Click on the Sign Up Button

    12) Closing Chrome Web Browser

    	
2) initial_login_into_server_enservio.rb

*Note* if any of these steps fail, the testcase will not continue
*Note* after user logs in with their credentials, New Claim web page is shown. Part of the test is just to ensure we can login.
Following Steps were created in the testcase => 

	1)Launch the Chrome Browser URL 
	
	2)Click on Login link
	
	3)Fill in email text box

    4)Fill in password text box

    5)Verifies Next Button is visible
    
    6)Click on Next Button 

    7)Verify New Claim Text is visible

    8) Closing Chrome Web Browser   	

