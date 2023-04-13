class Api::OrdersController < ApplicationController
    def index
        @order = Order.find_by(id: params[:id])
        if @order.present?
            order_status = OrderStatus.find_by(name: params[:status])
            if order_status.present? && @order.update(order_status_id: order_status.id)
                render json: { message: "Order status updated successfully." }, status: :ok
            else
                render json: { error: "Unable to update order status." }, status: :unprocessable_entity
            end
        else
            render json: { error: "Invalid order." }, status: :unprocessable_entity
        end
    end

end