class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:instructions]

  def instructions
  end
  
  
end
