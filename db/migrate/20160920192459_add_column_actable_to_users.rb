class AddColumnActableToUsers < ActiveRecord::Migration
  change_table :users do |t|
    t.actable
  end
end
