class StudentsController < ApplicationController
before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    @student.save
  redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end


private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
