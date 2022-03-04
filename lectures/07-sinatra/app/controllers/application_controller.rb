class ApplicationController < Sinatra::Base
    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

    # / => Output a "Hello World!" Greeting 
    get '/' do
        "Hello World"
    end
end
