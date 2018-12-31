class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.boolean "visible", :default => false
      t.integer "position"
      t.timestamps
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    drop_table :pages
  end
end
