class Spike < ActiveRecord::Base
  belongs_to :redis_trip
  
  validates :peak_velocity, :date_time, :event, presence: true

  def time_since_game_start
    self.date_time.time - self.event.date.time
  end
  
end
