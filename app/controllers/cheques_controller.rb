class ChequesController < ApplicationController
  def cheque

    @user = current_user
    @product = Product.find(params[:id])
    @cheque = Cheque.find_by(product: @product, user: @user)
    @n = @cheque&.new_cheque(@n)
    render pdf: "cheques/cheque" # Excluding ".pdf" extension.

  end
end
