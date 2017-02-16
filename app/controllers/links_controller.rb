class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.generate_unique_slug

    if @link.save
      redirect_to @link and return
    else
      render :new
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = Link.all
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
