class AddCompanyToEditors < ActiveRecord::Migration[5.0]
  def change
    add_column :editors, :company_name, :string
  end
end
