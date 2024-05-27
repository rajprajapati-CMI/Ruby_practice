class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee has been successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
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
  	@employee = Employee.find(params[:id])
  end 

  private

  def employee_params
    params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
