class AddSizeToSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :size, :integer
  end
end
