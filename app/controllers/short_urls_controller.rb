class ShortUrlsController < ApplicationController
  def create
    ShortUrl.create(url: params[:url])
    flash[:notice] = "Successfully create short URL "
    redirect_to root_url
  end

  def new
  end

  def show
  end
end
