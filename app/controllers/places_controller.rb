class PlacesController < ApplicationController

    def index
        @places = Place.paginate(:page => params[:page], :per_page => 5)
    end

    # creates a route for /new
    def new 
        @place = Place.new
    end

    # creates a db entry for user entered place
    def create
        Place.create(place_params)
        redirect_to root_path
    end
    
    private

    # method that allows user submitted name, description, and address
    # to be added to new place db entry
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end
    
end
