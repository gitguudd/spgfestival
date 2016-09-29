class StudentsController < ApplicationController
  def show
    head :not_found unless student
    render json: student if student
  end

  def create
    new_student = Student.new(student_params)
    if student.save
      head :created, id: new_student.id
    else
      head :bad_request
    end
  end

  def destroy
    if student.destroy
      head :okay
    else
      head :bad_request
    end
  end

  def update
    if student.update_attributes(student_params)
      render json: student
    else
      head :bad_request
    end
  end

  private

  def student
    @student ||= Student.for_user(user).where(id: student_params[:id]).first
  end

  def student_params
    params.permit(:id, :first_name, :last_name)
  end
end
