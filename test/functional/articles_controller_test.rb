require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
    sign_in :user, users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { description: @article.description, title: @article.title }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    put :update, id: @article, article: { description: @article.description, title: @article.title }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end



  test "should create attachment through article" do
    setup_uploaded_file
    assert_difference('Attachment.count') do
      post :create, :article => { :description => @article.description, :title => @article.title, 
        :attachments_attributes => { "0" => { :description => "Attachment", :file => @uploaded_file } }
      }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should create two attachments through article" do
    setup_uploaded_file
    assert_difference('Attachment.count', 2) do
      post :create, :article => { :description => @article.description, :title => @article.title, 
        :attachments_attributes => { 
          "0" => { :description => "First attachment", :file => @uploaded_file },
          "1" => { :description => "Second attachment", :file => @uploaded_file } 
        }
      }
    end

    assert_redirected_to article_path(assigns(:article))
  end



  private

  def setup_uploaded_file
    @uploaded_file = ActionDispatch::Http::UploadedFile.new({
      :filename => 'rails.png',
      :content_type => 'image/png',
      :tempfile => File.new("#{Rails.root}/test/fixtures/files/rails.png")
    })
  end

end
