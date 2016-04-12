class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: user_params)
  end

  def destroy

  end

  private
    def user_params
      params.require(:user).permit(:name, :spouse)
    end
end