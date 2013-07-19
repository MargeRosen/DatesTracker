class CreateEntries < ActiveRecord::Migration

  def change
    create_table :entries do |t|
      t.datetime :event
      t.string :description

      t.timestamps
    end
  end
  def up
    remove_column :entries, :event
  end

def down
  add_column :entries, :event, :datetime
end

end
