--Sometimes flawed logic in two-factor authentication means that after a user has completed the initial login step, 
--the website doesn't adequately verify that the same user is completing the second step. 
--an attacker could log in using their own credentials but then change the value of the account cookie to any arbitrary username when submitting the verification code. 

--With Burp running, log in to your own account and investigate the 2FA verification process. 
--Notice that in the POST /login2 request, the verify parameter is used to determine which user's account is being accessed.

























https://portswigger.net/web-security/authentication/multi-factor
