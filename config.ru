require 'alexa_rubykit'
require 'json'
require 'dashbot'

apiKey = 'DASHBOT_API_KEY'

map '/alexa' do
  alexa = proc do |env|
  	req = Rack::Request.new(env)
  	requestBody = JSON.parse( req.body.read )

  	@vi = Dashbot::DashbotSDK.new(apiKey, requestBody['session'])
	
    response = AlexaRubykit::Response.new
    response.add_speech('Ruby is running ready!')

    @vi = Dashbot::DashbotSDK.new(apiKey, requestBody['session'])
    
    @vi.track(requestBody['request']['intent']['name'] , requestBody['request'], response.build_response)
    [200, {"Content-Type" => "application/json"}, [response.build_response]]
  end
  run alexa
end
