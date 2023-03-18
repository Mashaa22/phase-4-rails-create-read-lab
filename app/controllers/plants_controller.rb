class PlantsController < ApplicationController
    def index
        plant = Plant.all
        render json: plant

    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        if plant
            render json: plant, status: :created
        else
            render json: {error:"Unable to create plant"}, status: :not_found
        end
    end

    def show
        render json: Plant.find_by(id: params[:id])

    end

    def edit
    end

    def update
    end

    def destroy
    end

end
