class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.integer :phone
      t.string :addres
      t.string :comment
      t.string :spesc
      t.string :fio

      t.timestamps
    end
  end
end
