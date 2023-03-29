class Restaurant < ApplicationRecord
    belongs_to :addresses, class_name: 'Address', foreign_key: 'address_id'
    belongs_to :users, class_name: 'User', foreign_key: 'user_id'
    has_many :products, class_name: 'Product', foreign_key: 'restaurant_id'
    has_many :orders, class_name: 'Order', foreign_key: 'restaurant_id'
end
