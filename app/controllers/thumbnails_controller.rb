class ThumbnailsController < ApplicationController
  def create
    @thumbnail = Thumbnail.new(thumbnail_params)

    respond_to do |format|
      if @thumbnail.save
        format.html { redirect_to @thumbnail, notice: 'Thumbnail was successfully created.' }
        format.json { render :show, status: :created, location: @thumbnail }
      else
        format.html { render :new }
        format.json { render json: @thumbnail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @thumbnail = Thumbnail.find(params[:id])
    @thumbnail.destroy
    respond_to do |format|
      format.html { redirect_to thumbnails_url, notice: 'Thumbnail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def thumbnail_params
      params[:thumbnail]
    end
end
