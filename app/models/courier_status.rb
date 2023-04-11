class CourierStatus < ApplicationRecord
    has_one :courier, class_name: 'Courier', foreign_key: 'courier_status_id'
end
