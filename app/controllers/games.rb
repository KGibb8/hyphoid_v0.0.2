HyphoidV002::App.controllers :games do

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
    @games = Game.all.order(:id)
    render 'index'
  end

  get :show, map: 'games/id' do
    @game = Game.find(params[:id])
    @sqrt = Math.sqrt(@game.locations.count).to_i
    render 'show'
  end

  get :new do
    # Building object in memory for the form, then thrown away on update(edit)
    @game = Game.new
    render 'new'
  end

  post :create, map: "/games" do
    # This works with form tags like: <input type="text" name="[car]model"
    Game.create(params[:game])
    redirect url(:index)
  end

  # /games/edit
  get :edit, map: '/games/:id/edit' do
    @game = Game.find(params[:id])
    @sqrt = Math.sqrt(@game.locations.count).to_i
    render 'edit'
  end

  patch :update, map: '/games/:id' do
    game = Game.find(params[:id])
    game.update(params[:game])
    redirect url(:index)
  end

  delete :destroy, map: 'game/id' do
    game = Game.find(params[:id])
    game.player_sessions.destroy_all
    # Will be a foreign key contraint with player_session/mycorrhiza
    # and with location/tree when introduced
    game.destroy
    redirect url(:index)
  end



end
