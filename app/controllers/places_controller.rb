class PlacesController < ApplicationController
    # requires that the user is signed up before they can create a new place entry
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @places = Place.paginate(:page => params[:page], :per_page => 5)
    end

    # creates a route for /new
    def new 
        @place = Place.new
    end

    # creates a db entry for user entered place
    def create
        current_user.places.create(place_params)
        redirect_to root_path
    end

    def show
        # pulls the id from the url
        @place = Place.find(params[:id])
    end

    def edit
        @place = Place.find(params[:id])
    end
    
    
    
    private

    # method that allows user submitted name, description, and address
    # to be added to new place db entry
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end
    
end
