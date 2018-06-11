class Contact < ActiveRecord::Base
  attr_accessor :nope
  validates :nope, invisible_captcha: true
end
