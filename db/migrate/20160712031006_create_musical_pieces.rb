class CreateMusicalPieces < ActiveRecord::Migration[5.0]
  def change
    create_table :musical_pieces do |t|
      t.string :title
      t.string :composer
      t.integer :grade
      t.string :category

      t.timestamps
    end
  end
end
