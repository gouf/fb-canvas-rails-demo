class UsersController < ApplicationController
  before_filter :allow_iframe_requests
  skip_before_filter :verify_authenticity_token, :only => [:index]

  def index
  end

  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
