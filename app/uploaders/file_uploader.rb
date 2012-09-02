# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base
  storage :ftp

  # How to: Make Carrierwave work on Heroku
  # https://github.com/jnicklas/carrierwave/wiki/How-to%3A-Make-Carrierwave-work-on-Heroku
  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
