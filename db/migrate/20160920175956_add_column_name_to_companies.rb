class AddColumnNameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
  end
end
