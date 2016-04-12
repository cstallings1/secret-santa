class User < ActiveRecord::Base
  belongs_to :drawing

  validates :name, presence: true
end