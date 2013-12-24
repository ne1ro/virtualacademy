class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find params[:id]
  end

  def create
    @course = Course.create course_params
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes course_params
  end

  def destroy
    @course = Course.find params[:id]
    @course.destroy
  end

private
  def course_params
    params.require(:course).permit :title, :body, :description, :cost
  end
end
