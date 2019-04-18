class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string        :nickname, null: false
      t.text          :email, null: false, unique: true
      t.text          :password, null:false
      t.timestamps
    end
  end
end
