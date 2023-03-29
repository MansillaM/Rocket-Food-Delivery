class OrderStatus < ApplicationRecord
    has_many :orders, class_name: 'Orders', foreign_key: 'status_id'
end
