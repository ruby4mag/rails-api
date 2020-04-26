class CreateEventrules < ActiveRecord::Migration[6.0]
  def change
    create_table :eventrules do |t|
      t.string :name
      t.string :rule

      t.timestamps
    end
  end
end
