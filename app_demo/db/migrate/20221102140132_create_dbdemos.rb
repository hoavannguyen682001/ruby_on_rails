class CreateDbdemos < ActiveRecord::Migration[7.0]
  def change
    create_table :dbdemos do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
