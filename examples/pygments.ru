$:.unshift File.dirname(__FILE__)
require 'app'

use Rack::ShowExceptions
use Rack::Lint

require 'pygments'
use Rack::Codehighlighter, :pygments, :element => "pre", :pattern => /\A:::([-_+\w]+)\s*\n/, :logging => true

run Sinatra::Application
