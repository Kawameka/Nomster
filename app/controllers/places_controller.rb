class PlacesController < ApplicationController

    def index
        @places = Place.paginate(:page => params[:page], :per_page => 5)
    end

    # creates a route for /new
    def new 
        @place = Place.new
    end
    
    
end
