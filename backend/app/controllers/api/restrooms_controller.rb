class Api::RestroomsController < ApplicationController
    def create
        @restroom = Restroom.new(restroom_params)
        if @restroom.save
            redirect_to api_restroom_url(@restroom.id)
        else
            render json: @restroom.errors.full_messages
        end
    end

    def show
        @restroom = Restroom.find_by(id: params[:id])

        if @restroom
            render "api/restrooms/show"
        else
            render json: "No Bathrooms Here", status: 422
        end
    end

    def index
        @restrooms = Restroom.all
        render "api/restrooms/index"
    end

    def destroy
        @restroom = Restroom.find_by(id: params[:id])
        if @restroom
            @restroom.destroy
            render "api/restrooms/show"
        else
            render json: "Bathroom can't be found", status: 404
        end
    end

    private
    def restroom_params
        params.require(:restroom).permit(:name, :lon, :lat, :description, :address)
    end
end
