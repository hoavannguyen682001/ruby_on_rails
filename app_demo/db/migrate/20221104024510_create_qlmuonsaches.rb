class CreateQlmuonsaches < ActiveRecord::Migration[7.0]
  def change
    create_table :qlmuonsaches do |t|
      t.integer :stt
      t.string :name
      t.string :lop
      t.string :masach
      t.string :tensach
      t.string :tenTG
      t.datetime :ngaymuon
      t.datetime :ngaytra

      t.timestamps
    end
  end
end
