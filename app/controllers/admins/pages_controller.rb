class Admins::PagesController < ApplicationController
  before_action :set_admins_page, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  # GET /admins/pages
  # GET /admins/pages.json
  def index
    @admins_pages = Admins::Page.all
  end

  # GET /admins/pages/1
  # GET /admins/pages/1.json
  def show
  end

  # GET /admins/pages/new
  def new
    @admins_page = Admins::Page.new
  end

  # GET /admins/pages/1/edit
  def edit
  end

  # POST /admins/pages
  # POST /admins/pages.json
  def create
    @admins_page = Admins::Page.new(admins_page_params)

    respond_to do |format|
      if @admins_page.save
        format.html { redirect_to @admins_page, notice: 'Page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admins_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @admins_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/pages/1
  # PATCH/PUT /admins/pages/1.json
  def update
    respond_to do |format|
      if @admins_page.update(admins_page_params)
        format.html { redirect_to @admins_page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admins_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/pages/1
  # DELETE /admins/pages/1.json
  def destroy
    @admins_page.destroy
    respond_to do |format|
      format.html { redirect_to admins_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_page
      @admins_page = Admins::Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admins_page_params
      params[:admins_page]
    end
end
