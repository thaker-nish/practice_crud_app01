class CreatePuppies < ActiveRecord::Migration[5.0]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :gender
      t.string :birthdate

      t.timestamps
    end
  end
end
