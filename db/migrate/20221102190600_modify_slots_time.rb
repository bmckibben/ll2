class ModifySlotsTime < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :slots, :start_at
     add_column :slots, :start_at, :datetime
     remove_column :slots, :end_at
     add_column :slots, :end_at, :datetime
  end
end
