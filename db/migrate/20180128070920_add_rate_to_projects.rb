class AddRateToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :rate, :decimal, :precision => 8, :scale => 2
  end
end
