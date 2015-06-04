class BoardingDocumentsController < ApplicationController
  before_action :set_boarding_document, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /boarding_documents
  # GET /boarding_documents.json
  def index
    @boarding_documents = BoardingDocument.all
  end

  # GET /boarding_documents/1
  # GET /boarding_documents/1.json
  def show
    @boarding_document = BoardingDocument.find(params[:id])
    country_id = @boarding_document.port_id
    @nationality = Country.distinct.select(:id, :name).where(:id => country_id).first
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boarding_document }
      format.pdf {
        send_data render_to_string, filename: "BoardingDocument#{@boarding_document.id}.pdf",
                  type: 'application/pdf',
                  disposition: 'inline'
      }
    end
  end

  # GET /boarding_documents/new
  def new
    @boarding_document = BoardingDocument.new
  end

  # GET /boarding_documents/1/edit
  def edit
  end

  # POST /boarding_documents
  # POST /boarding_documents.json
  def create
    @boarding_document = BoardingDocument.new(boarding_document_params)

    respond_to do |format|
      if @boarding_document.save
        format.html { redirect_to @boarding_document, notice: 'Boarding document was successfully created.' }
        format.json { render :show, status: :created, location: @boarding_document }
      else
        format.html { render :new }
        format.json { render json: @boarding_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarding_documents/1
  # PATCH/PUT /boarding_documents/1.json
  def update
    respond_to do |format|
      if @boarding_document.update(boarding_document_params)
        format.html { redirect_to @boarding_document, notice: 'Boarding document was successfully updated.' }
        format.json { render :show, status: :ok, location: @boarding_document }
      else
        format.html { render :edit }
        format.json { render json: @boarding_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarding_documents/1
  # DELETE /boarding_documents/1.json
  def destroy
    @boarding_document.destroy
    respond_to do |format|
      format.html { redirect_to boarding_documents_url, notice: 'Boarding document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #npdat
  def list
    @batches = Array.new
    list = Hash.new
    single = Hash.new

    single[0] = {name: 'IRSHAD KHANCHEY JAVID 1',
                 gender: 'male',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[0] = single

    list[0] = {name: 'IRSHAD KHANCHEY JAVID 2',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[1] = {name: 'AT3 HAFNIA PEGASUS 3',
               gender: 'female',
               position: 'Z1974745',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}

    @batches[1] = list

    single = Hash.new
    single[0] = {name: 'IRSHAD KHANCHEY JAVID 4',
                 gender: 'male',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[2] = single

    single = Hash.new
    single[0] = {name: 'IRSHAD KHANCHEY JAVID 5',
                 gender: 'female',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[3] = single

    list = Hash.new
    list[0] = {name: 'IRSHAD KHANCHEY JAVID 6',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[1] = {name: 'AT3 HAFNIA PEGASUS 7',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[2] = {name: 'AT3 HAFNIA PEGASUS 8',
               id_card: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[3] = {name: 'AT3 HAFNIA PEGASUS 9',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    @batches[4] = list

    begin
      @batches = BoardingDocument.list_boarding_documents
    rescue => ex
      puts ex
    end

  end
  # end npdat

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding_document
      @boarding_document = BoardingDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_document_params
      params.require(:boarding_document).permit(:name, :gender, :position, :birthday, :birthday_place, :passport, :port_id, :flight_ticket, :is_flight, :time_arrive, :status_id, :user_id, :remark)
    end
end
