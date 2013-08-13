require 'redrack-session'
require 'rack/request'
require 'rack/response'

class Rackapp
  def call(env)
    request = Rack::Request.new(env)
    session = env["rack.session"]
    session["counter"] ||= 0
    session["counter"]  += 1
    session["history"] ||= []
    session["history"]  << request.path
    Rack::Response.new do |response|
      response.write "<!DOCTYPE html>\n<html><head><title>Rackapp</title></head>\n<body><pre>\n"
      response.write "<h1>Rackapp</h1>\n"
      response.write "Counter: #{session['counter']}\n"
      response.write "History:\n" + session["history"].map { |h| "  - #{h}" }.join("\n")
      response.write "\n</pre></body></html>\n"
    end.finish
  end
end
