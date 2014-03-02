class CoursesController < ApplicationController
  before_action :find_course, only: [:show]

  def index
    #IF THIS IS NOT ADMIN eventually change to @courses = Course.all.where(:user_id => current_user.id)
      #keep how it is for now to see full list of courses, make admin namespace that will have Course.all
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def show
  end

  def create
    course = Course.create safe_course
    redirect_to course
  end

  private

  def safe_course
    params.require(:course).permit(:name, :number)
  end

  def find_course
    @course = Course.find params[:id]
  end

end
