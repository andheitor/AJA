require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, empresa: { bairro: @empresa.bairro, cidade: @empresa.cidade, cnpj: @empresa.cnpj, complemento: @empresa.complemento, endereco: @empresa.endereco, nome: @empresa.nome, numero: @empresa.numero, uf: @empresa.uf }
    end

    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should show empresa" do
    get :show, id: @empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa
    assert_response :success
  end

  test "should update empresa" do
    put :update, id: @empresa, empresa: { bairro: @empresa.bairro, cidade: @empresa.cidade, cnpj: @empresa.cnpj, complemento: @empresa.complemento, endereco: @empresa.endereco, nome: @empresa.nome, numero: @empresa.numero, uf: @empresa.uf }
    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, id: @empresa
    end

    assert_redirected_to empresas_path
  end
end
