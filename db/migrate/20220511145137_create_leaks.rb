# frozen_string_literal: true

class CreateLeaks < ActiveRecord::Migration[6.1]
  def change
    create_table :leaks do |t|
      t.string :phone
      t.string :addres
      t.string :comment
      t.string :fio

      t.timestamps
    end
  end
end
