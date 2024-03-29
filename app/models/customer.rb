class Customer < ApplicationRecord
    validates_uniqueness_of :user_id
    belongs_to :address, class_name: 'Address', foreign_key: 'address_id'
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_many :orders, class_name: 'Order', foreign_key: 'customer_id'
    validates :user_id, :address_id, :phone, :active, presence: true
end
