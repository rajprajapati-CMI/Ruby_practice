# app/controllers/employees_controller.rb

require 'csv'

class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy, :show]

  def index
    @employees = Employee.all

    respond_to do |format|
      format.html
      format.csv { send_data export_csv(@employees), filename: "employees-#{Date.today}.csv" }
    end
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
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
    redirect_to employees_path, alert: 'Employee not found'
  end

  def export_csv(employees)
    CSV.generate(headers: true) do |csv|
      csv << ["First Name", "Middle Name", "Last Name", "Email", "City", "State", "Country", "Pincode", "Address Line 1", "Address Line 2"]
      employees.each do |employee|
        csv << [employee.first_name, employee.middle_name, employee.last_name, employee.personal_email, employee.city, employee.state, employee.country, employee.pincode, employee.address_line_1, employee.address_line_2]
      end
    end
  end
end
