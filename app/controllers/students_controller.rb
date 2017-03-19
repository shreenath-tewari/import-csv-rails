class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    Student.import(params[:file])
    redirect_to root_path, notice: "Date Imported Successfully"
  end
end
