class CreatePageSectionMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :page_section_mappings do |t|
      t.integer :rank
      t.belongs_to :page
      t.belongs_to :section
      
      t.timestamps
    end
  end
end
