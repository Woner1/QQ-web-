class ApplicationController < ActionController::Base
  before_action :access_control

  def access_control
    # if Rails.env.development?
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Credentials'] = 'true'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, PATCH, DELETE'
    # end
  end
end
