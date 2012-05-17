class Message < ActiveRecord::Base
  default_scope :order => 'created_at DESC'

  belongs_to :user
  belongs_to :author, :class_name => "User", :foreign_key => "user_id"

  validates_presence_of :body, :on => :create
  validates :body, length: { maximum: 140 }

  attr_accessible :body, :user_id
end
