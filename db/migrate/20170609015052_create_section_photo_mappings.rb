class CreateSectionPhotoMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :section_photo_mappings do |t|
      t.integer :rank
      t.belongs_to :section
      t.belongs_to :photo

      t.timestamps
    end
  end
end
