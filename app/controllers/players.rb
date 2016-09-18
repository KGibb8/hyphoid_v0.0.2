HyphoidV002::App.controllers :players do
  layout :main

  get :index do
    @players = Player.all.order(:username)
    render 'index'
  end

  get :show, :with => :id do
    @player = Player.find(params[:id])
    render 'show'
  end

  get :new do
    # Building object in memory for the form, then thrown away on update(edit)
    @player = Player.new
    render 'new'
  end

  post :create do
    # TODO: LORIN WHAT DO WE DO WITH THE AUTHENTICITY TOKEN??
    @player = Player.create(username: params[:username], password: params[:password])
    redirect url(:index)
  end

  # /players/edit
  get :edit, map: '/players/:id/edit' do
    @player = Player.find(params[:id])
    @games = Game.all.order(:id)
    render 'edit'
  end

  patch :update, map: '/players/:id' do
    player = Player.find(params[:id])
    params[:player]["game_ids"] -= ["-1"]
    player.update(params[:player])
    redirect url(:index)
  end

  delete :destroy, map: 'player/id' do
    player = Player.find(params[:id])
    player.player_sessions.destroy_all
    # Will be a foreign key contraint with player_session/mycorrhiza
    player.destroy
    redirect url(:index)
  end

end
