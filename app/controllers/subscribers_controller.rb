class SubscribersController < ApplicationController
  # GET /subscribers
  # GET /subscribers.json
  def index
    @event = Event.find(params[:event_id])
    @subscribers = @event.subscribers.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /subscribers/new
  # GET /subscribers/new.json
  def new
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.build

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /subscribers/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.find(params[:id])
  end

  # POST /subscribers
  # POST /subscribers.json
  def create
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.new(params[:subscriber])

    respond_to do |format|
      if @subscriber.save
        format.html { redirect_to @event, notice: 'Subscriber was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /subscribers/1
  # PUT /subscribers/1.json
  def update
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.find(params[:id])

    respond_to do |format|
      if @subscriber.update_attributes(params[:subscriber])
        format.html { redirect_to @event, notice: 'Subscriber was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.json
  def destroy
    @event = Event.find(params[:event_id])
    @subscriber = @event.subscribers.find(params[:id])
    @subscriber.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
    end
  end
end
