class PicturesController < ApplicationController

  def index
    @colors = Color.all
    @pictures = Picture.all
    if params[:search]
      @pictures = Picture.search(params[:search])

    else
      @pictures = Picture.all
    end
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
    params.require(:picture).permit(:army, :primer, :base, :highlight, :shade, :search)
  end

end
