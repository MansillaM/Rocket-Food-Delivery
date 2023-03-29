class Address < ApplicationRecord
    has_many :customers, class_name: 'Customer', foreign_key: 'address_id'
    has_many :restaurants, class_name: 'Restaurant', foreign_key: 'address_id'
end
