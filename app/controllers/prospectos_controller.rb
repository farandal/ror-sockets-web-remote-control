
class ProspectosController < ApplicationController
  # GET /prospectos
  # GET /prospectos.json
  def index
    @prospectos = Prospecto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prospectos }
    end
  end

  # GET /prospectos/1
  # GET /prospectos/1.json
  def show
    @prospecto = Prospecto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prospecto }
    end
  end

  # GET /prospectos/new
  # GET /prospectos/new.json
  def new
    @prospecto = Prospecto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prospecto }
    end
  end

  # GET /prospectos/1/edit
  def edit
    @prospecto = Prospecto.find(params[:id])
  end

  # POST /prospectos
  # POST /prospectos.json
  def create
    @prospecto = Prospecto.new(params[:prospecto])

    respond_to do |format|
      if @prospecto.save
        format.html { redirect_to @prospecto, notice: 'Prospecto creado correctamente.' }
        format.json { render json: @prospecto, status: :created, location: @prospecto }
      else
        format.html { render action: "new" }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prospectos/1
  # PUT /prospectos/1.json
  def update
    @prospecto = Prospecto.find(params[:id])

    respond_to do |format|
      if @prospecto.update_attributes(params[:prospecto])
        format.html { redirect_to @prospecto, notice: 'Prospecto actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectos/1
  # DELETE /prospectos/1.json
  def destroy
    @prospecto = Prospecto.find(params[:id])
    @prospecto.destroy

    respond_to do |format|
      format.html { redirect_to prospectos_url }
      format.json { head :no_content }
    end
  end
end
