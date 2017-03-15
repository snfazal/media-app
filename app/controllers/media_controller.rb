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
   render json: { status: 200, media: Media.all }
 end
