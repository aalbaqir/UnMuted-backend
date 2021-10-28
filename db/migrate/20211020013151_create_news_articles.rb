class CreateNewsArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :news_articles do |t|
      t.string :title
      t.string :picture
      t.string :author
      t.string :date
      t.string :source
      t.string :comments
      t.integer :likes
      # t.belongs_to :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
