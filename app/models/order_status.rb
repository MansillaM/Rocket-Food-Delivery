class OrderStatus < ApplicationRecord
    has_many :orders, class_name: 'Orders', foreign_key: 'order_status_id'
    validates :name, presence: true
end
