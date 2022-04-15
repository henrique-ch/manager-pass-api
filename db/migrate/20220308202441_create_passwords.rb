class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.string :name, null: false
      t.string :password, null: false
      t.string :url_site
      t.references :user, null: false
      t.references :category
      t.timestamps
    end
  end
end
