class AddSessionToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :session, foreign_key: true
  end
end
