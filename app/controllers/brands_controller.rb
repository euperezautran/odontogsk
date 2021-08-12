class BrandsController < ApplicationController

  def index
    @brands = Brand.all
    @users = User.all
  end


  def show
    @brand = Brand.find(params[:id])
    @user = current_user
  end

  private

  def brands_params
    params.require(:brand).permit(:name, :images, :brand_img, :user_id)
  end
end
