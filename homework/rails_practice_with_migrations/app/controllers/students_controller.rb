class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student_addresses = @student.addresses.pluck(:address)
    @courses = @student.courses.pluck(:course_name)
  end
end
