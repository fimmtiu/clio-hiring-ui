class Simulator < ActiveRecord::Base
  validates_presence_of :state
  validates_length_of :name, minimum: 1, maximum: 64, allow_blank: false

  serialize :state

  before_create :randomize_state

  def randomize_state
    state.map! do |row|
      row.map { [:hard, :soft, :none].sample }
    end
  end
end
