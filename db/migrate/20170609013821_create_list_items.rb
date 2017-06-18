class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.string :item, {null: false}
      t.integer :rank
      t.belongs_to :section
      t.belongs_to :list
      
      t.timestamps
    end
  end
end
