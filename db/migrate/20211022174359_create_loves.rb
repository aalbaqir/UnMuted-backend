class CreateLoves < ActiveRecord::Migration[6.1]
  def change
    create_table :loves do |t|
      t.string :love_reaction
      t.belongs_to :news_article, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
