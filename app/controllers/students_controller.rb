class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end
  
  def activate

  private

    def set_student
      @student = Student.find(params[:id])
      @student.active = true
      @student.save
    end
end