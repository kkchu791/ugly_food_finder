class MarketsController < ApplicationController
  before_action :set_market, only: [:show, :edit, :update, :destroy]

  def index
    @markets = Market.all
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
    respond_to do |format|
      if @market.update(market_params)
        format.html { redirect_to @market, notice: 'Market was successfully updated.' }
        format.json { render :show, status: :ok, location: @market }
      else
        format.html { render :edit }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @market.destroy
    respond_to do |format|
      format.html { redirect_to markets_url, notice: 'Market was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_market
      @market = Market.find(params[:id])
    end

    def market_params
      params.require(:market).permit(:store, :address, :description, :delivery)
    end
end
