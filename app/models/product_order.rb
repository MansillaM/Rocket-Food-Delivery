class ProductOrder < ApplicationRecord
    belongs_to :products, class_name: 'Product', foreign_key: 'product_id'
    belongs_to :orders, class_name: 'Order', foreign_key: 'order_id'
end
