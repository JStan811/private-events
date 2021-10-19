class RemoveHostIdFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :host_id
  end
end
