class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show

  end

  def new
    @picture = Picture.new
  end

  def create

  end

end
