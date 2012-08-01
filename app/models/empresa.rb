class Empresa < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cnpj, :complemento, :endereco, :nome, :numero, :uf
end
