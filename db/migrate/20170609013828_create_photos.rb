class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title, {null: false}
      t.text :caption

      t.timestamps
    end
  end
end
