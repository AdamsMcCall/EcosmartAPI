class TransfersController < ApplicationController
  def index 
    transfers = Transfer.all
    render json: { transfers: transfers }, status: :ok
  end
end