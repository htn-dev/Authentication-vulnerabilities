--Sometimes flawed logic in two-factor authentication means that after a user has completed the initial login step, 
--the website doesn't adequately verify that the same user is completing the second step. 
--an attacker could log in using their own credentials but then change the value of the account cookie to any arbitrary username when submitting the verification code. 

--With Burp running, log in to your own account and investigate the 2FA verification process. 
--Notice that in the POST /login2 request, the verify parameter is used to determine which user's account is being accessed.

-- Log out of your account.
--Send the GET /login2 request to Burp Repeater. Change the value of the verify parameter to carlos and send the request. 
--This ensures that a temporary 2FA code is generated for Carlos.
--Go to the login page and enter your username and password. Then, submit an invalid 2FA code.
--Send the POST /login2 request to Burp Intruder.
--In Burp Intruder, set the verify parameter to carlos and add a payload position to the mfa-code parameter. Brute-force the verification code.
--Load the 302 response in the browser.
--Click My account to solve the lab. 
   
 




















https://portswigger.net/web-security/authentication/multi-factor
