class AddingMinorAndMajorFieldsForDevicedetails < ActiveRecord::Migration
  def up
    add_column :devicedetails, :minor_id, :integer
    add_column :devicedetails, :major_id, :integer
  end

  def down
    remove_column :devicedetails, :minor_id
    remove_column :devicedetails, :major_id
  end
end
