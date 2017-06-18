class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :page_title, {null: false}
      t.text :header
      t.text :sub_header

      t.timestamps
    end
  end
end
