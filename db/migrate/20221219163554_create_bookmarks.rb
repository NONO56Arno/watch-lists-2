class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.integer :movie_id
      t.string :comment
      t.integer :list_id

      t.timestamps
    end
  end
end
