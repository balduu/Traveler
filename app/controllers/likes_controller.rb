class LikesController < ApplicationController
   before_action :create
   def create
        post_id = params[:post_id]
      if  Like.create!(user_id: current_user.id, post_id: post_id)
         flash[:suscess] = "All right" 
      end
      redirect_to root_url
   end
      
end