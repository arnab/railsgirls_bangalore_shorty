class ShortUrlsController < ApplicationController
  def create
    ShortUrl.create(url: params[:url])
    redirect_to root_url
  end

  def new
  end

  def show
  end
end
