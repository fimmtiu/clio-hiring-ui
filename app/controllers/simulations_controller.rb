class SimulationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @simulations = Simulation.for_user(current_user).all
  end

  def new
    @simulation = current_user.simulations.build
  end

  def show
    @simulation = Simulation.for_user(current_user).find(params[:id])
  end

  def create
    # This is just a quick hack; to hell with permitted params and error
    # handling for the moment.
    blarf = sim_params
    w, h = blarf.delete(:width), blarf.delete(:height)
    blarf[:state] = Array.new(h.to_i) { Array.new(w.to_i) }
    @simulation = current_user.simulations.build(blarf)
    @simulation.save!
    redirect_to @simulation
  end

  def update
    @simulation = Simulation.for_user(current_user).find(params[:id])
    @simulation.next
    @simulation.save!
    render partial: "sim_table"
  end

  def destroy
    @simulation = Simulation.for_user(current_user).find(params[:id])
    @simulation.destroy
    render :index
  end

  def sim_params
    params.require(:simulation).permit!
  end

end
