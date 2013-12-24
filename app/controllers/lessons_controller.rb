class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find params[:id]
  end

  def create
    @lesson = Lesson.create lesson_params
  end

  def update
    @lesson = Lesson.find params[:id]
    @lesson.update_attributes lesson_params
  end

  def destroy
    @lesson = Lesson.find params[:id]
    @lesson.destroy
  end

private
  def lesson_params
    params.require(:lesson).permit :title, :body, :number, :description
  end
end
