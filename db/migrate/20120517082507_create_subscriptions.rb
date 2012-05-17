class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :subscriber_id
      t.string :subscribee_id

      t.timestamps
    end
  end
end
