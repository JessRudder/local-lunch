class Group < ActiveRecord::Base
  belongs_to :community
  belongs_to :restaurant
  has_many :members

  validates_presence_of :community, :restaurant, :time

  def show_time
    time.strftime("%l:%M")
  end
end
