class PeopleController < ApplicationController

    # skipping CSRF verification
    skip_before_action :verify_authenticity_token

    def index
        @people = Person.all
        render json: @people
    end

    def show
        @person = Person.find(params[:id])
        render json: @person
    end

    def destroy
        @person = Person.find(params[:id])
        @person.destroy
    end

    def create
        @person = Person.new(person_params)
        @person.save

        render json: @person
    end

    def update
        @person = Person.find(params[:id])
        @person.update(person_params)

        render json: @person
    end

    private
        def person_params
            params.require(:person).permit(:firstName, :lastName, :email)
        end
end
