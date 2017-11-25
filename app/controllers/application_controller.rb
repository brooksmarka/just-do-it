class ApplicationController < ActionController::API
  # https://stackoverflow.com/questions/10436878/basic-auth-with-rails-api
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods
end
