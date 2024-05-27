class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :personal_email, presence: true, uniqueness: true
  validates :city, :state, :country, :pincode, :address_line_1, presence: true

  def name
    "#{first_name.capitalize} #{last_name.capitalize}".strip
  end

  def full_address
    "#{address_line_1.capitalize},#{address_line_2.capitalize} #{city.capitalize} ,#{state.capitalize}, #{country.capitalize}, Pincode - #{pincode.capitalize}"
  end
end
