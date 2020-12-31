class ArtworksController < ApplicationController
    
    def index
        render json: Artwork.all
    end

    def create
        artwork = artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: Artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        artwork = Artwork.find_by(id: params[:id])

        render json: artwork
    end

    def update
        artwork = Artwork.find_by(id: params[:id])

        if artwork.update(artwork_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork = artwork.find_by(id: params[:id])

        if artwork.destroy
            render json: artwork
        else
            render json: "Cannot destroy this artworks."
        end
    end

    private
    def artwork_params
        params.require(:artworks).permit(:title, :image_url, :artist_id)
    end

end