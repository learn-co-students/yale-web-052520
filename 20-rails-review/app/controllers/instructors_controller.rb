class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def show
    # byebug
    @instructor = Instructor.find(params[:id])
    # @avg_age = @instructor.students.sum(&:age)/@instructor.students.length
  end

end
