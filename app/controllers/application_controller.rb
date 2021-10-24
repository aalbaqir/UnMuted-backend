class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token
    before_action :authorized


    def authorized
        return render json:{error: "Not Authorized"}, status: :unauthorized 
        unless session.include? :user_id 
        end
    end
  

    private

    # def current_user
    #   User.first
    # end
  
  
end