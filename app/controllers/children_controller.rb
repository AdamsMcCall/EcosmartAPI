class ChildrenController < ApplicationController
  def index
    children = Child.all
    render json: { children: children }, status: :ok
  end
end
