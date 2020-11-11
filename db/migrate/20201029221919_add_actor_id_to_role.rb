class AddActorIdToRole < ActiveRecord::Migration[5.2]
  def change
    add_reference :roles, :actor, foreign_key: true
  end
end
