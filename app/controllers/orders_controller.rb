class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @order = Order.new
    @order.order_pizzas.build
    @order.order_drinks.build
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: "pedido adicionado ao carrinho!"
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @order.errors, status: :unprocessable_entity }
    end
  end

  private

  def order_params
    params.require(:order).permit(
      order_pizzas_attributes: [ :size, :crust, :flavor, :border, :sauce, ingredients: [] ],
      order_drinks_attributes: [ :name, :size ]
    )
  end
end
