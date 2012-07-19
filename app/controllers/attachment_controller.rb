class AttachmentController < ApplicationController
  # needed for upload
  require 'net/ftp'

  def index
    @attachments = Attachment.all
  end

  def show
    @attachment = Attachment.find(params[:id])
  end

  def new
    @attachment = Attachment.new
  end

  def edit
    @attachment = Attachment.find(params[:id])
  end

  # Solution for file upload found here: http://www.prodevtips.com/2010/03/15/file-uploading-in-ror/
  def create
    @attachment = Attachment.new(params[:attachment])
    @upload = upload(params[:attachment][:filename])
    @attachment.filename = params[:attachment][:filename].original_filename
    @attachment.path = "http://localhost/" + params[:attachment][:filename].original_filename
    respond_to do |format|
      if @attachment.save
        format.html { redirect_to @attachment, notice: 'Anhang erfolgreich gespeichert.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @attachment = Attachment.find(params[:id])

    respond_to do |format|
      if @attachment.update_attributes(params[:attachment])
        format.html { redirect_to @attachment, notice: 'Anhang erfolgreich aktualisiert.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy

    respond_to do |format|
      format.html { redirect_to attachments_url }
    end
  end

  protected

  def upload(attachment)
    file = attachment
    ftp = Net::FTP.new('localhost')
    ftp.passive = true
    ftp.login(user = "smueller", passwd = "asrael")
    ftp.storbinary("STOR " + file.original_filename, file, Net::FTP::DEFAULT_BLOCKSIZE)
    ftp.quit()
  end
end
