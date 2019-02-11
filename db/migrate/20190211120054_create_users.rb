class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.text :description
      t.string :first_name
      t.string :last_name
      t.references :admin, index: true
      t.references :participant, index: true
    end
  end
end