class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:shortened_url] = @link.short
    
    redirect_to :new
    end
  end  
  
  def show
    @link = Link.find_by(slug: params[:slug])
    if @link.nil?
      flash.now[:alert] = "The requested shortened link '#{params[:slug]}' could not be found."
      render 'errors/404', status: 404
    else
      @link.increment!(:clicked)
      redirect_to @link.url, allow_other_host: true
    end
  end

  private

  def link_params
    params.require(:link).permit(:url, :slug)
  end
end
