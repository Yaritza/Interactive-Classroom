class CoursesController < ApplicationController
  def index
    #IF THIS IS NOT ADMIN eventually change to @courses = Course.all.where(:user_id => current_user.id)
      #keep how it is for now to see full list of courses, make admin namespace that will have Course.all
@courses = Course.all
  end

  def create

  end
end
