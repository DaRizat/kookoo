class Subscription < ActiveRecord::Base
  attr_accessible :subscriber_id, :subscribee_id

  belongs_to :subscriber, :class_name => "User"
  belongs_to :subscribee, :class_name => "User"
end
