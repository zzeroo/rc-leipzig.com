require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = articles(:one)
  end


  test "should create a article with one attachment" do
    setup_uploaded_file
    article = Article.new( :description => @article.description, :title => @article.title, 
                          :attachments_attributes => { 
      "0" => { :description => "Second attachment", :file => @uploaded_file } 
      }
    )
    
    assert article.save!
  end

  test "should create a article with two attachments" do
    setup_uploaded_file
    article = Article.new( :description => @article.description, :title => @article.title, 
                          :attachments_attributes => { 
      "0" => { :description => "First attachment", :file => @uploaded_file },
      "1" => { :description => "Second attachment", :file => @uploaded_file } 
      }
    )
    
    assert article.save!
  end

  # test "should create a article attachment with a valid url" do
  #   setup_uploaded_file
  #   article = Article.new( :description => @article.description, :title => @article.title, 
  #                         :attachments_attributes => { 
  #     "0" => { :description => "Attachment with a url", :file => @uploaded_file } 
  #     }
  #   )
  #  
  #   article.save!
  #   attachment = article.attachments.first
  #   assert_equal attachment.file.url, File.join(FileUploader.ftp_url, FileUploader.store_dir)
  # end


  private

  def setup_uploaded_file
    @uploaded_file = ActionDispatch::Http::UploadedFile.new({
      :filename => 'rails.png',
      :content_type => 'image/png',
      :tempfile => File.new("#{Rails.root}/test/fixtures/files/rails.png")
    })
  end
end
