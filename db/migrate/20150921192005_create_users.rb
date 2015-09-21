class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName, :lastName, :email
      t.timestamps
    end
  end
end
