--With Burp running, investigate the login page. Observe that your IP is temporarily blocked if you submit 3 incorrect logins in a row. 
--However, notice that you can reset the counter for the number of failed login attempts by logging in to your own account before this limit is reached.
--Enter an invalid username and password, then send the POST /login request to Burp Intruder. Create a pitchfork attack with payload positions in both 
--the username and password parameters.
--On the Resource pool tab, add the attack to a resource pool with Maximum concurrent requests set to 1. 
--By only sending one request at a time, you can ensure that your login attempts are sent to the server in the correct order.
--On the Payloads tab, select payload set 1. Add a list of payloads that alternates between your username and carlos. 
--Make sure that your username is first and that carlos is repeated at least 100 times.
--Edit the list of candidate passwords and add your own password before each one. Make sure that your password is aligned with your username in the other list.
--Add this list to payload set 2 and start the attack.
--When the attack finishes, filter the results to hide responses with a 200 status code. Sort the remaining results by username. 
--There should only be a single 302 response for requests with the username carlos. Make a note of the password from the Payload 2 column.
--Log in to Carlos's account using the password that you identified and access his account page to solve the lab.
   
 
