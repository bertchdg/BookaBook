class AddGenreToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :genre, :string, null: false
  end
end
