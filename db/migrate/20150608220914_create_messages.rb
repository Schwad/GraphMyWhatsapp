class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.datetime :sent
      t.text :content
      t.text :sender

      t.timestamps null: false
    end
  end
end
