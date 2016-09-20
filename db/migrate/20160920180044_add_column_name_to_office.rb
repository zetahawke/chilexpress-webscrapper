class AddColumnNameToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :name, :string
    add_column :offices, :address, :string
  end
end
