class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string       :title, null: false
      t.text         :text, null: false
      t.text   :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

