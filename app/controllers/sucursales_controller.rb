class SucursalesController < ApplicationController
  # GET /sucursales
  # GET /sucursales.json
  def index
    @sucursales = Sucursal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sucursales }
    end
  end

  # GET /sucursales/1
  # GET /sucursales/1.json
  def show
    @sucursal = Sucursal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sucursal }
    end
  end

  # GET /sucursales/new
  # GET /sucursales/new.json
  def new
    @sucursal = Sucursal.new
    @municipios = Municipio.all
    @instituciones = Institucion.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sucursal }
    end
  end

  # GET /sucursales/1/edit
  def edit
    @sucursal = Sucursal.find(params[:id])
    @municipios = Municipio.all
    @instituciones = Institucion.all

  end

  # POST /sucursales
  # POST /sucursales.json
  def create
    @sucursal = Sucursal.new(params[:sucursal])
    @municipios = Municipio.all
    @instituciones = Institucion.all

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully created.' }
        format.json { render json: @sucursal, status: :created, location: @sucursal }
      else
        format.html { render action: "new" }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sucursales/1
  # PUT /sucursales/1.json
  def update
    @sucursal = Sucursal.find(params[:id])
    @municipios = Municipio.all
    @instituciones = Institucion.all

    respond_to do |format|
      if @sucursal.update_attributes(params[:sucursal])
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursales/1
  # DELETE /sucursales/1.json
  def destroy
    @sucursal = Sucursal.find(params[:id])
    @sucursal.destroy

    respond_to do |format|
      format.html { redirect_to sucursales_url }
      format.json { head :no_content }
    end
  end
end
