class ProfilesController < ApplicationController
   
        wrap_parameters format: []
          
          def index
            # byebug
            render json: Profile.find_by(id: session[:user_id])
          end  
        
        
        def show
            # byebug
            profile = Profile.find_by(id: session[:user_id])
            if profile
              render json: profile
            else
            #   render json: { error: "Not authorized" }, status: :unauthorized
              render json: user
        
            end
        
        end

end