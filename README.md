# dashbot-ruby-alexa-example
Simple example of an Alexa skill in ruby using dashbot gem

This example was adapted from an example from Alex Vangelov
https://alexvangelov.wordpress.com/category/ruby/

This skill is very basic and this example is just intended to show how the dashbot Ruby SDK works. 

Step 1. Install dashbot gem

	gem install dashbot

Step 2. Add dashbot code to initialize the library and send data OR use the 
	config.ru included in this repository and skip to step 3

	Initialize dashbot:

		@appToken = 'DASHBOT_API_KEY'
		@dba = Dashbot::DashbotSDK.new(appToken, requestBody['session'])


	Reinitialize on new session (user)

		@dba = Dashbot::DashbotSDK.new(appToken, requestBody['session'])

	Track requests

		@vi.track(requestBody['request']['intent']['name'] , requestBody['request'], response.build_response)

	
Step 3. Start your server. If using the included config.ru, you can run it with the command
		
	rackup
	
Step 4. Configure SSL on the server or use ngrok for testing. Run the command:
	
	ngrok http 9292

	Copy the url ngrok displays into your skill's endpoint box and test the skill.
	
	
	
	

	
	
