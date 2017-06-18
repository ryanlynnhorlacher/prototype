class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :phone
      t.string :email, {null: false}
      t.string :first, {null: false}
      t.string :last, {null: false}
      t.text :message, {null: false}
      t.string :purpose, {null: false}

      t.timestamps
    end
  end
end
