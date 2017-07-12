class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    # add a column to the places db called user_id, which will be an integer
    add_column :places, :user_id, :integer
    # add an index to the user_id column
    add_index :places, :user_id
  end
end
