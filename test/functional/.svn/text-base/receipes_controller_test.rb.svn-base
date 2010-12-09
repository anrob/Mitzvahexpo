require 'test_helper'

class ReceipesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Receipe.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Receipe.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Receipe.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to receipe_url(assigns(:receipe))
  end
  
  def test_edit
    get :edit, :id => Receipe.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Receipe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Receipe.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Receipe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Receipe.first
    assert_redirected_to receipe_url(assigns(:receipe))
  end
  
  def test_destroy
    receipe = Receipe.first
    delete :destroy, :id => receipe
    assert_redirected_to receipes_url
    assert !Receipe.exists?(receipe.id)
  end
end
