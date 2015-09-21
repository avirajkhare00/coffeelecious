class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, :description, :ingredients, :directions
      t.timestamps
    end
  end
end
