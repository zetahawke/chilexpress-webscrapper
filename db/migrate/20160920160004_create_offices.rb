class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
