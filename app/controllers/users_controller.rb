class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @barracks = Barrack.all
  end

end
