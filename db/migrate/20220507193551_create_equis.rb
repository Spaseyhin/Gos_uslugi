class CreateEquis < ActiveRecord::Migration[6.1]
  def change
    create_table :equis do |t|
      t.string :phone
      t.string :addres
      t.string :comment
      t.string :fio

      t.timestamps
    end
  end
end
