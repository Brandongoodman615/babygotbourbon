class CreateLegs < ActiveRecord::Migration[5.0]
  def change
    create_table :legs do |t|
      t.string :title
      t.boolean :done, default: false
      t.timestamps
    end
  end
end
