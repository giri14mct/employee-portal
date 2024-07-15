class Bill < ApplicationRecord
  belongs_to :employee

  validates :amount, presence: true
  validates :bill_type, presence: true, inclusion: { in: ['food', 'travel', 'others'], message: "%{value} is not a valid type" }

  enum bill_type: {
    food: 0,
    travel: 1,
    others: 2,
  }

  def employee_name
    employee.first_name + " " + employee.last_name
  end

  def department_name
    employee.department.name
  end
end
