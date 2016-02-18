class StudentsController < ApplicationController
  def index
    names = Student.all.map { |s| (s.first_name + " " + s.last_name) }.join(", ")
    render text: "#{names}"
  end

  def show
    student = Student.find(params[:id])
    render text: "Student: #{student.first_name}; Address: #{student.addresses.pluck(:address).join(", ")}"
  end
end
