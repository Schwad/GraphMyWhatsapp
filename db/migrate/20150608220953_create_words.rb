class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :message_id
      t.text :content

      t.timestamps null: false
    end
  end
end
