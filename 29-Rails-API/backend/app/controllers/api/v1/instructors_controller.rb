class Api::V1::InstructorsController < ApplicationController

    def index
        instructors = Instructor.all
        render json: instructors
        # render json: instructors, only: [:name, :id], include: :students

    end

    def show
        instructor = Instructor.find(params[:id]) 
        render json: instructor
        # render json: instructor, only: [:name, :id], include: :students
    end

    def create
        # byebug
        instructor = Instructor.create(instructor_params)
        render json: instructor
    end

    def update
        # byebug
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        render json: instructor
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        render json: "Instructor deleted!!"
    end

    private

    def instructor_params
        params.require(:instructor).permit(:name)
    end

end
