class CreateEditors < ActiveRecord::Migration[5.0]
  def change
    create_table :editors do |t|
      t.string :name
      t.string :email
      t.string :pright
      t.string :pcenter
      t.string :pleft

      t.timestamps
    end
  end
end
