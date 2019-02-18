class AddPredictionsToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :predicted_1, :integer
    add_column :histories, :predicted_2, :integer
    add_column :histories, :predicted_3, :integer
    add_column :histories, :predicted_4, :integer
    add_column :histories, :predicted_5, :integer
    add_column :histories, :predicted_powerball, :integer
  end
end
