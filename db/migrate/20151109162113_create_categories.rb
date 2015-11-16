class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :head

      t.timestamps null: false
    end
  end
end
