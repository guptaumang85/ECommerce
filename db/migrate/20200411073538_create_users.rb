class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :is_seller, default: false
      t.boolean :is_buyer, default: false
      t.string :email
      t.string :password_digest
      t.string :string
      t.string :contact_number

      t.timestamps
    end
  end
end
