class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :picture
      t.string :name
      t.string :email
      t.string :country
      t.string :member_since

      t.timestamps
    end
  end
end
