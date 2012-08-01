class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :cnpj
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :uf

      t.timestamps
    end
  end
end
