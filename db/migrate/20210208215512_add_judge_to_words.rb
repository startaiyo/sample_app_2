class AddJudgeToWords < ActiveRecord::Migration[5.2]
  def change
    add_column :words,:judge,:string
  end
end
