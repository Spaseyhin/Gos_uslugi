# frozen_string_literal: true

class CreateElectrics < ActiveRecord::Migration[6.1]
  def change
    create_table :electrics do |t|
      t.string :phone
      t.string :addres
      t.string :comment
      t.string :fio

      t.timestamps
    end
  end
end
