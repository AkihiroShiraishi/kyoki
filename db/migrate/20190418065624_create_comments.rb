class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text           :text, null: false
      t.text           :user_id, null: false, foreign_key: true
      t.text           :article_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end


