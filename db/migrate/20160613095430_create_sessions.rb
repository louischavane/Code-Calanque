class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :slug
      t.string :name
      t.string :location
      t.string :image
      t.timestamps
    end
  end
end
