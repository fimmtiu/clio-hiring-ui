class Simulation < ActiveRecord::Base
  validates_presence_of :state
  validates_length_of :name, minimum: 1, maximum: 64, allow_blank: false

  scope :for_user, ->(user) { where(user_id: user.id) }

  serialize :state

  before_create :randomize_state

  def width
    state.first.length
  end

  def height
    state.length
  end

  def randomize_state
    state.map! do |row|
      row.map { [:hard, :soft, :none].sample }
    end
  end
end
