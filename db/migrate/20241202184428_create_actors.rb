class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :nacionality
      t.date :birth_date

      t.timestamps
    end
  end
end
