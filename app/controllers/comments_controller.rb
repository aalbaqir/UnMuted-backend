class CommentsController < ApplicationController

  skip_before_action :authorized

    def index
        render json: Comment.all
      end  
    
    
    def show
        comment = Comment.find_by(id: session[:user_id])
        if comment
          render json: comment
        else
          # render json: { error: "Not authorized" }, status: :unauthorized
          render json: comment
    
        end
    end

    def create
        comment = Comment.create(new_comment_params)
        # user = User.first.id
        comment.user_id = User.first.id
        comment.save
        render json: comment
      end

  
    def update
        edited_comment = Comment.find_by_id( params[:id] )
    
        if edited_comment.update(user_edit_params)
          render json: edited_comment
        else
          render json: {errors: edited_comment.errors.full_messages}
        end
    
    end


      private

      def new_comment_params
        params.permit(:entry, :user_id, :news_article_id)
          
      end

      def user_edit_params
        params.permit(:entry)
      end
       
end
