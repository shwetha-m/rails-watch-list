class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie, null: false, foreign_key: { on_delete: :restrict }
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
