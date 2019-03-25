class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :name
      t.boolean :for_practice

      t.timestamps
    end
  end
end
