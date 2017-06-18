class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :section_title, {null: false}
      t.string :category, {null: false}
      t.text :paragraph_text

      t.timestamps
    end
  end
end
