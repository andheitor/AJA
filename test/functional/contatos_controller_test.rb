require 'test_helper'

class ContatosControllerTest < ActionController::TestCase
  setup do
    @contato = contatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contato" do
    assert_difference('Contato.count') do
      post :create, contato: { cargo: @contato.cargo, celular: @contato.celular, email: @contato.email, id_empresa: @contato.id_empresa, nextel: @contato.nextel, nome: @contato.nome, telefone_comercial: @contato.telefone_comercial }
    end

    assert_redirected_to contato_path(assigns(:contato))
  end

  test "should show contato" do
    get :show, id: @contato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contato
    assert_response :success
  end

  test "should update contato" do
    put :update, id: @contato, contato: { cargo: @contato.cargo, celular: @contato.celular, email: @contato.email, id_empresa: @contato.id_empresa, nextel: @contato.nextel, nome: @contato.nome, telefone_comercial: @contato.telefone_comercial }
    assert_redirected_to contato_path(assigns(:contato))
  end

  test "should destroy contato" do
    assert_difference('Contato.count', -1) do
      delete :destroy, id: @contato
    end

    assert_redirected_to contatos_path
  end
end
