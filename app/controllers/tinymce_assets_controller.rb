class TinymceAssetsController < ApplicationController
  # This action handles file uploads
  def create
    file = params[:file]
    render json: {
      location: view_context.image_url(file)
    }, content_type: "text/html"
  end
end
