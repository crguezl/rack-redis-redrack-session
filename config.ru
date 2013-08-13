require 'rubygems'
require 'bundler/setup'
$:.push File.expand_path("../lib", __FILE__)

require 'rackapp'

use Rack::ShowExceptions
use Rack::Lint
use Redrack::Session::Middleware
run Rackapp.new
