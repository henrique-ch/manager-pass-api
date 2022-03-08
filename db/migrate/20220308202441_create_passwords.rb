class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.string :name
      t.string :password
      t.string :url_site

      t.timestamps
    end
  end
end
