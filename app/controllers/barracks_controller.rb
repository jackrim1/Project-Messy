class BarracksController < ApplicationController

  def index
    @barracks = Barrack.all
  end

  def new
    @barrack = Barrack.new
  end

  def create
    Barrack.create(barrack_params)
    redirect_to '/barracks'
  end

  def show
    @barrack = Barrack.find(params[:id])
  end

  private

  def barrack_params
    params.require(:barrack).permit(:name)
  end


end
