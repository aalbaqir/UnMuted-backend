class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token

    # private
  
    def current_user
      User.first
    end
  
  
  end
  