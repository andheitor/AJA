class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :id_empresa
      t.string :nome
      t.string :cargo
      t.string :telefone_comercial
      t.string :celular
      t.string :nextel
      t.string :email

      t.timestamps
    end
  end
end
