class MedRecordsController < ApplicationController
  before_filter :authenticate_user!, except: [:index] #need to be logged in, except on index page

  # GET /med_records
  # GET /med_records.json
  def index
    @med_records = MedRecord.all # make current_user.all to keep records showing only for current_user logged in.

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @med_records }
    end
  end

  # GET /med_records/1
  # GET /med_records/1.json
  def show
    @med_record = MedRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @med_record }
    end
  end

  # GET /med_records/new
  # GET /med_records/new.json
  def new
    @med_record = current_user.med_records.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @med_record }
    end
  end

  # GET /med_records/1/edit
  def edit
    @med_record = current_user.med_records.find(params[:id])
  end

  # POST /med_records
  # POST /med_records.json
  def create
    @med_record = current_user.med_records.new(params[:med_record])

    respond_to do |format|
      if @med_record.save
        format.html { redirect_to @med_record, notice: 'Med record was successfully created.' }
        format.json { render json: @med_record, status: :created, location: @med_record }
      else
        format.html { render action: "new" }
        format.json { render json: @med_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /med_records/1
  # PUT /med_records/1.json
  def update
    @med_record = current_user.med_records.find(params[:id])

    respond_to do |format|
      if @med_record.update_attributes(params[:med_record])
        format.html { redirect_to @med_record, notice: 'Med record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @med_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_records/1
  # DELETE /med_records/1.json
  def destroy
    @med_record = current_user.med_records.find(params[:id])
    @med_record.destroy

    respond_to do |format|
      format.html { redirect_to med_records_url }
      format.json { head :no_content }
    end
  end
end
