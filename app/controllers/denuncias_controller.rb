class DenunciasController < ApplicationController
  
  load_and_authorize_resource
  
  # GET /denuncias
  # GET /denuncias.json
  def index
    @denuncias = Denuncia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @denuncias }
    end
  end

  # GET /denuncias/1
  # GET /denuncias/1.json
  def show
    @denuncia = Denuncia.find(params[:id])
    @archivo = Archivo.new
    @nota = Nota.new
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @denuncia }
    end
  end

  # GET /denuncias/new
  # GET /denuncias/new.json
  def new
    @denuncia = Denuncia.new
    @expedientes = Expediente.all
    @municipios = Municipio.all 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @denuncia }
    end
  end

  def new_con_expediente
    @denuncia = Denuncia.new
    @expediente = Expediente.find(params[:id])
    @municipios = Municipio.all 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @denuncia }
    end
  end

  # GET /denuncias/1/edit
  def edit
    @denuncia = Denuncia.find(params[:id])
    @expedientes = Expediente.all
    @municipios = Municipio.all
    @expediente = @denuncia.expediente
  end

  
  # POST /denuncias
  # POST /denuncias.json
  def create
    @denuncia = Denuncia.new(params[:denuncia])
    @expedientes = Expediente.all
    @municipios = Municipio.all

    @denuncia.usuario = current_user
    @expediente = Expediente.find(params[:expediente_id])
    @denuncia.expediente = @expediente

    respond_to do |format|
      if @denuncia.save
        format.html { redirect_to @expediente, notice: 'Denuncia was successfully created.' }
        format.json { render json: @denuncia, status: :created, location: @denuncia }
      else
        format.html { render action: "new_con_expediente" }
        format.json { render json: @denuncia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /denuncias/1
  # PUT /denuncias/1.json
  def update
    @denuncia = Denuncia.find(params[:id])
    @expedientes = Expediente.all
    @municipios = Municipio.all

    respond_to do |format|
      if @denuncia.update_attributes(params[:denuncia])
        format.html { redirect_to @denuncia, notice: 'Denuncia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @denuncia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denuncias/1
  # DELETE /denuncias/1.json
  def destroy
    @denuncia = Denuncia.find(params[:id])
    @denuncia.destroy

    respond_to do |format|
      format.html { redirect_to denuncias_url }
      format.json { head :no_content }
    end
  end
end
