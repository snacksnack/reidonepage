class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :company
      t.string :phone
      t.string :url
      t.text :message

      t.timestamps
    end
  end
end
