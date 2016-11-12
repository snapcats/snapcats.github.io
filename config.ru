require 'rubygems'
require 'sinatra'
require 'rack/recaptcha'

use Rack::Recaptcha, :public_key => '6LeSxAsUAAAAAAW5C2fRVE5E3o-jGdaOB3JDkB3j', :private_key => '6LeSxAsUAAAAAK1_4KmaIa0Xcok0SQtpZteh_7bQ'
helpers Rack::Recaptcha::Helpers
enable :sessions

require './application'
run Sinatra::Application
