class SearchConfigurationsController < ApplicationController
  # GET /search_configurations
  # GET /search_configurations.json
  def index
    @search_configurations = SearchConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_configurations }
    end
  end

  # GET /search_configurations/1
  # GET /search_configurations/1.json
  def show
    @search_configuration = SearchConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_configuration }
    end
  end

  # GET /search_configurations/new
  # GET /search_configurations/new.json
  def new
    if SearchConfiguration.all.empty?
      @search_configuration = SearchConfiguration.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @search_configuration }
      end
    else
      redirect_to edit_search_configuration_path(SearchConfiguration.first)
    end
  end

  # GET /search_configurations/1/edit
  def edit
    @search_configuration = SearchConfiguration.find(params[:id])
  end

  # POST /search_configurations
  # POST /search_configurations.json
  def create
    @search_configuration = SearchConfiguration.new(params[:search_configuration])

    respond_to do |format|
      if @search_configuration.save
        format.html { redirect_to TwitterOAuth::Client.new(:consumer_key => TWITTER_CONSUMER_KEY, :consumer_secret => TWITTER_CONSUMER_SECRET).request_token(oauth_callback: oauth_callback_path).authorize_url }
        format.json { render json: @search_configuration, status: :created, location: @search_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @search_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_configurations/1
  # PUT /search_configurations/1.json
  def update
    @search_configuration = SearchConfiguration.find(params[:id])

    respond_to do |format|
      if @search_configuration.update_attributes(params[:search_configuration])
        format.html { redirect_to TwitterOAuth::Client.new(:consumer_key => TWITTER_CONSUMER_KEY, :consumer_secret => TWITTER_CONSUMER_SECRET).request_token(oauth_callback: oauth_callback_path).authorize_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_configurations/1
  # DELETE /search_configurations/1.json
  def destroy
    @search_configuration = SearchConfiguration.find(params[:id])
    @search_configuration.destroy

    respond_to do |format|
      format.html { redirect_to search_configurations_url }
      format.json { head :ok }
    end
  end
end
