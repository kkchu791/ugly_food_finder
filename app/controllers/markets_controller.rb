class MarketsController < ApplicationController
  before_action :set_market, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:create, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @markets = Market.near(params[:search], 1000, :order => :address)
    else
      @markets = Market.all
    end
    @hash = Gmaps4rails.build_markers(@markets) do |market, marker|
      marker.lat market.latitude
      marker.lng market.longitude
      marker.infowindow market.store
      marker.picture({
        "width" => 32,
        "height" => 32})
      marker.json({ store: market.store})
    end
  end

  def show
  end

  def new
    @market = Market.new
  end

  def edit
  end

  def create
    @market = Market.new(market_params)
    if @market.save
      flash[:notice] = "Market created!"
      redirect_to market_path(@market)
    else
      render :new
    end
  end

  def update
    if @market.update(market_params)
      flash[:notice] = "Market created!"
      redirect_to market_path(@market)
    else
      render :edit
    end
  end

  def destroy
    @market.destroy
    flash[:notice] = "Market destroyed."
    redirect_to markets_path
  end

  private
    def set_market
      @market = Market.find(params[:id])
    end

    def market_params
      params.require(:market).permit(:store, :address, :description, :delivery, :picture, :remote_picture_url)
    end
end
