class StudentsController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end
  private 
  def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
  end
end
