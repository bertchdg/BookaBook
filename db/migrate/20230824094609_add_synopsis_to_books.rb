class AddSynopsisToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :Synopsis, :string
  end
end
