require 'redrack-session'
require 'rack/request'
require 'rack/response'

class Rackapp
  def call(env)
    request = Rack::Request.new(env)
    session = env["rack.session"]
    Rack::Response.new do |response|
      response.write "<!DOCTYPE html>\n<html><head><title>Second</title></head>\n<body><pre>\n"
      response.write "<h1>Second</h1>\n"
      response.write "Counter: #{session['counter']}\n"
      response.write "History:\n" + session["history"].map { |h| "  - #{h}" }.join("\n")
      response.write "\n</pre></body></html>\n"
    end.finish
  end
end

