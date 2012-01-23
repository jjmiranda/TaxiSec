class TaxisController < ApplicationController
  # GET /taxis
  # GET /taxis.json
  def index
    @taxis = Taxi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taxis }
    end
  end

  # GET /taxis/1
  # GET /taxis/1.json
  def show
    @taxi = Taxi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taxi }
    end
  end

  # GET /taxis/new
  # GET /taxis/new.json
  def new
    @taxi = Taxi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taxi }
    end
  end

  # GET /taxis/1/edit
  def edit
    @taxi = Taxi.find(params[:id])
  end

  # POST /taxis
  # POST /taxis.json
  def create
    @taxi = Taxi.new(params[:taxi])

    respond_to do |format|
      if @taxi.save
        format.html { redirect_to @taxi, notice: 'Taxi was successfully created.' }
        format.json { render json: @taxi, status: :created, location: @taxi }
      else
        format.html { render action: "new" }
        format.json { render json: @taxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taxis/1
  # PUT /taxis/1.json
  def update
    @taxi = Taxi.find(params[:id])

    respond_to do |format|
      if @taxi.update_attributes(params[:taxi])
        format.html { redirect_to @taxi, notice: 'Taxi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @taxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxis/1
  # DELETE /taxis/1.json
  def destroy
    @taxi = Taxi.find(params[:id])
    @taxi.destroy

    respond_to do |format|
      format.html { redirect_to taxis_url }
      format.json { head :ok }
    end
  end
end
