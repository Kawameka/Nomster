class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.string :rating
      t.integar :user_id
      t.integer :place_id
      t.timestamps
    end

    add.index :comment, [:user_id, :place_id]
    add.index :comment, :place_id
  end
end
