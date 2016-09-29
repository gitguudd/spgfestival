class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :student, index: true
      t.integer :category, default: 0

      t.timestamps 
    end
  end
end
