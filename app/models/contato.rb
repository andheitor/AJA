class Contato < ActiveRecord::Base
  attr_accessible :cargo, :celular, :email, :id_empresa, :nextel, :nome, :telefone_comercial
end
