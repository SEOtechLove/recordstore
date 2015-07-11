class RecordstoresController < ApplicationController
  before_action :set_recordstore, only: [:show, :edit, :update, :destroy]

  # GET /recordstores
  # GET /recordstores.json
  def index
    @recordstores = Recordstore.all
  end

  # GET /recordstores/1
  # GET /recordstores/1.json
  def show
  end

  # GET /recordstores/new
  def new
    @recordstore = Recordstore.new
  end

  # GET /recordstores/1/edit
  def edit
  end

  def get_recordstore_data 
    html_doc =Nokogiri::HTML(open("http://www.plattenladenwoche.de/plattenlaeden/"))
  end

  # POST /recordstores
  # POST /recordstores.json
  def create
    @recordstore = Recordstore.new(recordstore_params)

    respond_to do |format|
      if @recordstore.save
        format.html { redirect_to @recordstore, notice: 'Recordstore was successfully created.' }
        format.json { render :show, status: :created, location: @recordstore }
      else
        format.html { render :new }
        format.json { render json: @recordstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recordstores/1
  # PATCH/PUT /recordstores/1.json
  def update
    respond_to do |format|
      if @recordstore.update(recordstore_params)
        format.html { redirect_to @recordstore, notice: 'Recordstore was successfully updated.' }
        format.json { render :show, status: :ok, location: @recordstore }
      else
        format.html { render :edit }
        format.json { render json: @recordstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recordstores/1
  # DELETE /recordstores/1.json
  def destroy
    @recordstore.destroy
    respond_to do |format|
      format.html { redirect_to recordstores_url, notice: 'Recordstore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recordstore
      @recordstore = Recordstore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recordstore_params
      params.require(:recordstore).permit(:name, :street, :code, :city, :contact_name, :contact_number, :contact_email, :contact_fax, :seo_title, :seo_description, :logo_url, :content)
    end
end
