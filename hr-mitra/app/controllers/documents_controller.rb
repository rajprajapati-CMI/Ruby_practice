class DocumentsController <ApplicationController
	class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy, :show]

  def index
    @documents = Dcument.all
  end

  def new
   @document = Document.new
  end

  def create
   @document = Document.new(document_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee has been successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @employee.update(document_params)
      flash[:success] = 'Employee has been updated successfully'
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    if @employee.destroy
      redirect_to employees_path, notice: 'Employee has been successfully deleted.'
    else
      redirect_to employees_path, alert: 'There was an error deleting the employee.'
    end
  end

  def show
  end

  private

  def document_params
    params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
  end

  def set_employee
   @document = Document.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
    redirect_to employees_path, alert: 'Employee not found'
  end
end

end