class RemoveFqdn < ActiveRecord::Migration
  def up
    change_table :sites do |t|
      t.remove_index :fqdn
      t.remove :fqdn
    end
  end

  def down
    change_table :sites do |t|
      t.string :fqdn, null: false
      t.index  :fqdn, unique: true
    end
  end
end
