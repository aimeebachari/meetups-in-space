class AddCreatorToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :creator_id, :integer
  end
end
