class FileUploadController < ApplicationController
  def index
    @file_uploads = FileUpload.all
  end

  def create
    @file_upload = FileUpload.new(params[:file_upload])
  end

  def show
    @file_upload = FileUpload.find(params[:id])
  end

  def destroy
    @file_upload = FileUpload.find(params[:id])
    @file_upload.destroy

    redirect_to file_uploads_path
  end
end
