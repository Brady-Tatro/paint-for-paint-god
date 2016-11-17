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
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "Miniature added successfully"
      redirect_to pictures_path
    else
      flash[:notice] = @picture.errors.full_messages.join(",")
      render 'new'
    end

  end


  private

  def picture_params
    params.require(:picture).permit(:army, :primer, :base, :highlight, :shade)
  end

end
