class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.references :office, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
