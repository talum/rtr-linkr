class RedirectsController < ApplicationController
  def create
    @link = Link.find_by(slug: params[:slug])

    if @link.nil?
      flash[:message] = "Link not found"
      redirect_to root_path and return
    end

    @link.redirect_events.create
    
    redirect_to @link.url
  end

end
