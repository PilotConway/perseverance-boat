class PeopleController < ApplicationController
  before_filter :getBooking
  before_filter :getPerson, only: [ :show, :edit, :update, :destroy ]

  # Retreives the booking if available. 
  def getBooking 
    logger.debug "Getting Booking for #{params[:booking_id]}"
    @booking = Booking.find(params[:booking_id]) if :booking_id
    logger.debug "Retrieved Booking #{@booking}"
  end 

  def getPerson
    if @booking
      @person = @booking.people.find(params[:id])
    else
      @person = Person.find(params[:id])
    end
  end

  # GET /people
  # GET /people.json
  def index
    if @booking
      @people = @booking.people
    else
      @people = Person.all 
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = @booking.people.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    success = false
    error_msg = ""
    if @booking 
      begin
        @person = @booking.people.create(params[:person])
        logger.debug("Created person")
        success = true
      rescue ActiveRecord::RecordInvalid => invalid 
        msg = invalid.record.errors.get(:alert).first
        error_msg = "Failed to create guest booking: #{msg}"
        logger.error(error_msg)
      rescue Exception => e
        error_msg = "Failed to create guest booking: An unknown error occurred"
        logger.error(error_msg + " #{e}")
      end
    else
      @person = Person.new(params[:person])
      success = true
    end

    respond_to do |format|
      if not success
        format.html { redirect_to @booking, alert: error_msg } 
        format.json { render json: @person.errors, status: :unprocessable_entity }
      else
        if @person.save
          format.html { redirect_to @booking, notice: "#{@person.first_name} sucessfully added to trip" }
          format.json { render json: @person, status: :created, location: @person }
        else
          format.html { render action: "new" }
          format.json { render json: @person.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    if @booking
      @booking.update_attributes(params[:id])
    end 

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @booking, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to @booking }
      format.json { head :no_content }
    end
  end
end
