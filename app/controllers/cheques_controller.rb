class ChequesController < ApplicationController
  def cheque

    @user = current_user
    @product = Product.find(params[:id])
    @cheque = Cheque.find_by(product: @product, user: @user)
    @n = @cheque&.new_cheque(@n)
    render pdf: "cheques/cheque" # Excluding ".pdf" extension.
  end

  #  def create
  #   Cheque.create!(
  #                 cheque_image: 'sensodyne/cheques/cheque_sensodyne_truewhite.jpg',
  #                 product_id: @product.id,
  #                 user: @user
  #               )
  #   redirect_to products_path
  # end
end
