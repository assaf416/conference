require_dependency "conference/application_controller"

module Conference
  class CallersController < ApplicationController
    # GET /callers
    # GET /callers.json
    def index
      @callers = Caller.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @callers }
      end
    end
  
    # GET /callers/1
    # GET /callers/1.json
    def show
      @caller = Caller.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @caller }
      end
    end
  
    # GET /callers/new
    # GET /callers/new.json
    def new
      @caller = Caller.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @caller }
      end
    end
  
    # GET /callers/1/edit
    def edit
      @caller = Caller.find(params[:id])
    end
  
    # POST /callers
    # POST /callers.json
    def create
      @caller = Caller.new(params[:caller])
  
      respond_to do |format|
        if @caller.save
          format.html { redirect_to @caller, notice: 'Caller was successfully created.' }
          format.json { render json: @caller, status: :created, location: @caller }
        else
          format.html { render action: "new" }
          format.json { render json: @caller.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /callers/1
    # PUT /callers/1.json
    def update
      @caller = Caller.find(params[:id])
  
      respond_to do |format|
        if @caller.update_attributes(params[:caller])
          format.html { redirect_to @caller, notice: 'Caller was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @caller.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /callers/1
    # DELETE /callers/1.json
    def destroy
      @caller = Caller.find(params[:id])
      @caller.destroy
  
      respond_to do |format|
        format.html { redirect_to callers_url }
        format.json { head :no_content }
      end
    end
  end
end
