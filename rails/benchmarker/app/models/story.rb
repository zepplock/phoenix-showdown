require 'active_record'

class Story < ActiveRecord::Base

  validates :body, presence: true
  validates :title, presence: true

end
