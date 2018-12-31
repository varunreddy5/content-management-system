class CreateSectionEdits < ActiveRecord::Migration[5.2]
  def up
    create_table :section_edits do |t|
      t.integer "user_id"
      t.integer "section_id"
      t.string "summary" #Summary of the edit made
      t.timestamps
    end
      add_index("section_edits", ["user_id", "section_id"])
  end

  def down
    drop_table :section_edits
  end
end
