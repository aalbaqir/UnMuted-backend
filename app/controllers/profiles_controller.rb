class ProfilesController < ApplicationController
   
        wrap_parameters format: []
        skip_before_action :authorized

          def index
            # byebug
            profiles = Profile.all
            render json: profiles
          end  
        
        
        def show
            byebug
            profile = Profile.find_by(user_id: session[:user_id])
            # byebug
            if profile
              render json: profile, serializer: ProfileSerializer
            else
              # render json: { error: "Not authorized" }, status: :unauthorized
              render json: profile
        
            end
        
        end

end