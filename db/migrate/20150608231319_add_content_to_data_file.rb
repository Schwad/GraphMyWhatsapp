class AddContentToDataFile < ActiveRecord::Migration
  def change
    add_column :data_files, :content, :text
  end
end
