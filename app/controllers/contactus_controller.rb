class ContactusController < ApplicationController
  before_action :set_contactu, only: %i[ show edit update destroy ]

  # GET /contactus or /contactus.json
  def index
    @contactus = Contactu.all
  end

  # GET /contactus/1 or /contactus/1.json
  def show
  end

  # GET /contactus/new
  def new
    @contactu = Contactu.new
  end

  # GET /contactus/1/edit
  def edit
  end

  # POST /contactus or /contactus.json
  def create
    @contactu = Contactu.new(contactu_params)

    respond_to do |format|
      if @contactu.save
        format.html { redirect_to root_url, notice: "Your message was successfully created." }
        format.json { render :show, status: :created, location: @contactu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contactu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactus/1 or /contactus/1.json
  def update
    respond_to do |format|
      if @contactu.update(contactu_params)
        format.html { redirect_to contactu_url(@contactu), notice: "Your message was successfully Update" }
        format.json { render :show, status: :ok, location: @contactu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contactu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactus/1 or /contactus/1.json
  def destroy
    @contactu.destroy

    respond_to do |format|
      format.html { redirect_to contactus_url, notice: "Your message has been delete successfully." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactu
      @contactu = Contactu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contactu_params
      params.require(:contactu).permit(:name, :email, :subject, :message)
    end
end
