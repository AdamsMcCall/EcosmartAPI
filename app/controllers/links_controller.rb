class LinksController < ApplicationController
  def index 
    links = Link.all
    render json: { links: links }, status: :ok
  end
end