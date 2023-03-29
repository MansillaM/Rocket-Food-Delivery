class Order < ApplicationRecord
    belongs_to :restaurants, class_name: 'Restaurant', foreign_key: 'restaurant_id'
    belongs_to :customers, class_name: 'Customer', foreign_key: 'customer_id'
    belongs_to :order_statuses, class_name: 'OrderStatus', foreign_key: 'status_id'
    has_many :product_orders, class_name: 'ProductOrder', foreign_key: 'order_id'
end
