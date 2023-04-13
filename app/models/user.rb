class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :customer, class_name: 'Customer', foreign_key: 'user_id'
  has_one :employee, class_name: 'Employee', foreign_key: 'user_id'
  has_many :restaurants, class_name: 'Restaurant', foreign_key: 'user_id'
  has_one :courier, class_name: 'Courier', foreign_key: 'user_id'
  validates :name, :email, :password, presence: true

   # Checks if user is an employee when signing in. Automatically picked up by Rails
   def active_for_authentication?
    super && is_employee?
  end

  def is_employee?
    Employee.find_by(id: self.id)
  end
end
