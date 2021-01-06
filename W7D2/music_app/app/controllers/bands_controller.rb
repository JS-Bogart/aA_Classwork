class BandsController < ApplicationController

    def index
        @band = Band.all 
        render :index
    end

    def new
        @band = Band.new
        render :new
    end

    def create
        @band = Band.new(band_params)
        if @band.save
            render :index
        else
            flash.now[:errors] = @band.errors.full_messages
            render :new
        end
    end

    def show
        
    end

    private
    def band_params
        params.require(:band).permit(:name)
    end

end
