class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :description
      t.boolean :status, :default => false
    end
  end
end
