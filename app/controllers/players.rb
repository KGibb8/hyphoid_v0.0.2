HyphoidV002::App.controllers :players do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index do
    @players = Player.all.order(:name)
    render 'index'
  end

  get :show, map: 'players/id' do
    @player = Player.find(params[:id])
    render 'show'
  end

  get :new do
    # Building object in memory for the form, then thrown away on update(edit)
    @player = Player.new
    render 'new'
  end

  post :create, map: "/players" do
    # This works with form tags like: <input type="text" name="[car]model"
    Player.create(params[:player])
    redirect url(:index)
  end

  # /players/edit
  get :edit, map: '/players/:id/edit' do
    @player = Player.find(params[:id])
    render 'edit'
  end

  patch :update, map: '/players/:id' do
    player = Player.find(params[:id])
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
