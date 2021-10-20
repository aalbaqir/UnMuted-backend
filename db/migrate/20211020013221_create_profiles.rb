class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :picture
      t.string :name
      t.string :email
      t.string :country
      t.string :member_since
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
