class MediaController < ApplicationController
  before_action :authorize_media, only: [:update, :delete]

  def create
    puts media_params
    media = current_user.media.new(media_params)
    puts media
    if media.save
      render json: { status: 201, media: media}
    else
      render json: { status: 422, user: media.errors}
    end
  end

  def show
   render json: { status: 200, media: Media.find(params[:id]) }
  end

  def index
    puts Media.all
   render json: { status: 200, media: Media.all }
  end

  def update
    media = Media.find(params[:id])

    if media.update(media_params)
      render json: { status: 422, user: media.errors }
    else
      render json: { status: 422, user: media.errors }
    end
  end

  def destroy
    Media.destroy(params[:id])

    render json: { status: 204, message: 'resource deleted successfully', media: current_user.media }
  end


  def media_params
    params.required(:media).permit( :name, :linkable_type, :linkable_id)
  end
end
