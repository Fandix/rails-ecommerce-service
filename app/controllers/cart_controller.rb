class CartController < ApplicationController
  def index
    @cart = Cart.find_by(user_id: current_user.id)
    render json: {
      products: @cart.products,
      status: { code: 200, message: 'Get cart successfully.' }
    }
  end
end
