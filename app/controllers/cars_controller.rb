class CarsController < ApplicationController
    # skipping CSRF verification
    skip_before_action :verify_authenticity_token

    def index
        @cars = Car.all
        render json: @cars
    end

    def show
        @car = Car.find(params[:id])
        render json: @car
    end

    def destroy
        @car = Car.find(params[:id])
        @car.destroy
    end

    def create
        @car = Car.new(car_params)
        @car.save

        render json: @car
    end

    def update
        @car = Car.find(params[:id])
        @car.update(car_params)

        render json: @car
    end

    private
        def car_params
            params.require(:car).permit(:personId, :year, :make, :model, :price)
        end
end
