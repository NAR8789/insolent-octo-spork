class ThumbnailsController < ApplicationController
  before_action :set_comic
  before_action :set_thumbnail, only: [:show, :destroy]

  def show
  end

  def create
    @thumbnail = @comic.thumbnails.new(thumbnail_params)

    respond_to do |format|
      if @thumbnail.save
        format.html { redirect_to @thumbnail, notice: 'Thumbnail was successfully created.' }
        format.js { render json: @thumbnail }
        format.json { render json: @thumbnail }
      else
        format.html { render :new }
        format.js { render json: @thumbnail.errors, status: :unprocessable_entity }
        format.json { render json: @thumbnail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @thumbnail.destroy
    respond_to do |format|
      format.html { redirect_to thumbnails_url, notice: 'Thumbnail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_comic
      @comic = Comic.find(params[:comic_id])
    end

    def set_thumbnail
      @thumbnail = Thumbnail.find(params[:id])
    end

    def thumbnail_params
      params.require(:thumbnail).permit(:thumbnail)
    end
end
