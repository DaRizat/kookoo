class User < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  has_many :subscriptions, :class_name => "Subscription", :foreign_key => "subscriber_id" 
  has_many :subscribers, :class_name => "Subscription", :foreign_key => "subscribee_id"

  attr_accessible :email, :full_name, :bio, :location, :password, :password_confirmation
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_presence_of :full_name
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_presence_of :email
  validates :email, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.crypted_password == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.crypted_password = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
