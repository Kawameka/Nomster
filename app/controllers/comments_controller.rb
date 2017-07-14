class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        # pulls the place_id from the url
        @place = Place.find(params[:place_id])
        # creates a comment attached to the particular place
        # we can use this syntax instead of "@place =" because the model file "has_many" comments
        @place.comments.create(comment_params.merge(user: current_user))
        redirect_to place_path(@place)
    end

    private

    def comment_params
        params.require(:comment).permit(:message, :rating)
    end
    
end
