class PlayersController < ApplicationController
  def index
    @rizin_players = Player.where(group: "RIZIN").order(position: :asc).limit(3)
    @k_1_players = Player.where(group: "K-1").order(position: :asc).limit(3)
  end
end
