require "json"
require "nancy/base"

class App < Nancy::Base
  get '/json' do
    response['Content-Type'] = 'application/json'
    {:message => "Hello World!"}.to_json
  end

  get '/plaintext' do
    response['Content-Type'] = 'text/plain'
    "Hello, World!"
  end
end
