class Employee < ApplicationRecord
  has_many :bills, dependent: :destroy
  belongs_to :department

  validates :first_name, :last_name, :designation, presence: true
  validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  def full_name 
    first_name + " " + last_name
  end
end
