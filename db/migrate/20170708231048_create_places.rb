class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    # establishes the headings in the databse
    # and determines what type of data they will be
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.timestamps
    end
  end
end
