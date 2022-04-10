class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    @students = Student.all
  end

  def show
  end

  

  def active
    id = params[:id]
    @student = Student.find(id)
    @student.active = !@student.active
    @student.save
    redirect_to student_url
    
  end

  

  private

    def set_student
      @student = Student.find(params[:id])
    end
end