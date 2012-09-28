require "sinatra/base"
require "haml"
require "rack/ssl" unless ENV['RACK_ENV'] == "development"

class App < Sinatra::Base

  get '/*' do
    content = CGI::escapeHTML((File.open("response.xml", "r").read rescue ""))
    haml :get, :locals => {:returns => content}
  end

  post '/*' do
    send_file 'response.xml'
  end

end
