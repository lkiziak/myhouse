class CreateMyHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :my_houses do |t|

      t.timestamps
    end
  end
end
