class AddColumnsToPackage < ActiveRecord::Migration
  def change
    add_column :packages, :track_number, :string
    add_column :packages, :status, :string
    add_column :packages, :product_name, :string
    add_column :packages, :service, :string
    add_column :packages, :receptor_key, :string
    add_column :packages, :arrived_date, :string
    add_column :packages, :arrived_hour, :string
    add_column :packages, :receptor_name, :string   
  end
end
