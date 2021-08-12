class UsersController < ApplicationController

  def show
    @user = current_user
    @brands = Brand.all
  end

end
