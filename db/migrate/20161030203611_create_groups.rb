class CreateGroups < ActiveRecord::Migration[5.0]

  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :website_url
      t.string :group_email

      t.timestamps
    end
  end
end
