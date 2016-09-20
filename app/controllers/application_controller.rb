class ApplicationController < ActionController::Base
include Banken
#  include Pundit
  protect_from_forgery with: :exception
end
