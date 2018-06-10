class ParentsController < ApplicationController
  def index
    parents = Parent.all
    render json: { parents: parents }, status: :ok
  end
end