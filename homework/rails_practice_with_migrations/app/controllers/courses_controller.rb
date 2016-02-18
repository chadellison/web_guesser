class CoursesController < ApplicationController
  def index
    @course_names = Course.all.map { |course| course.course_name }
    # render text: "#{course_names}"
  end

  def show
    @course = Course.find(params[:id])
    @list_of_students = @course.students.map { |student| student.first_name + " " + student.last_name }
    # render text: "#{course.course_name}: #{list_of_students}"
  end
end
