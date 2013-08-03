class ShortUrlsController < ApplicationController
  def create
    short_url = ShortUrl.create(url: params[:url])
    flash[:notice] = "Successfully create short URL: #{short_url.short_code} "
    redirect_to root_url
  end

  def new
  end

  def show
    short_url = ShortUrl.find_by_short_code(params[:short_code])
    redirect_to short_url.url
  end
end
