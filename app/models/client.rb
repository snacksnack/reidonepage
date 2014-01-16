class Client < ActiveRecord::Base
  attr_accessible :company, :email, :fname, :lname, :message, :phone, :url
  alias_attribute :new_column_name, :column_name_in_db

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER = /(1)?(?:-)?(?:\(|-)?([\d]{3})(?:\.|\-|\))([\d]{3})(?:\.|\-)([\d]{4})(?: ?x([\d]{3,5}))?/

  validates :email, format: { with: VALID_EMAIL_REGEX },
                    length: { maximum: 100 }
  validates :fname, presence: true, length: { maximum: 50 }
  validates :lname, presence: true, length: { maximum: 50 }
  validates :phone, format: { with: VALID_PHONE_NUMBER }
  validates :message, presence: true
end
