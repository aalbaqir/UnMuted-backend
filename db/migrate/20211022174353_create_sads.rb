class CreateSads < ActiveRecord::Migration[6.1]
  def change
    create_table :sads do |t|
      t.string :sad_reaction
      t.belongs_to :news_article, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
