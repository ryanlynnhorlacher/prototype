class CreateSectionListMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :section_list_mappings do |t|
    	t.belongs_to :section
    	t.belongs_to :list

      t.timestamps
    end
  end
end
