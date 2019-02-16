class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.datetime :date
      t.integer :ball_1
      t.integer :ball_2
      t.integer :ball_3
      t.integer :ball_4
      t.integer :ball_5
      t.integer :powerball

      t.timestamps
    end
  end
end
