class CreateRedirectEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :redirect_events do |t|
      t.integer :link_id
      t.timestamps
    end
  end
end
