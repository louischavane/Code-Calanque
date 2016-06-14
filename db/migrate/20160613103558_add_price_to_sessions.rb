class AddPriceToSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :price, :integer
  end
end
