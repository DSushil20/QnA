class HighscoresController < ApplicationController
  # GET /highscores
  # GET /highscores.xml
  def index
    @highscores = Highscore.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @highscores }
    end
  end

  # GET /highscores/1
  # GET /highscores/1.xml
  def show
    @highscore = Highscore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @highscore }
    end
  end

  # GET /highscores/new
  # GET /highscores/new.xml
  def new
    @highscore = Highscore.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @highscore }
    end
  end

  # GET /highscores/1/edit
  def edit
    @highscore = Highscore.find(params[:id])
  end

  # POST /highscores
  # POST /highscores.xml
  def create
    @highscore = Highscore.new(params[:highscore])

    respond_to do |format|
      if @highscore.save
        format.html { redirect_to(@highscore, :notice => 'Highscore was successfully created.') }
        format.xml  { render :xml => @highscore, :status => :created, :location => @highscore }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @highscore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /highscores/1
  # PUT /highscores/1.xml
  def update
    @highscore = Highscore.find(params[:id])

    respond_to do |format|
      if @highscore.update_attributes(params[:highscore])
        format.html { redirect_to(@highscore, :notice => 'Highscore was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @highscore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /highscores/1
  # DELETE /highscores/1.xml
  def destroy
    @highscore = Highscore.find(params[:id])
    @highscore.destroy

    respond_to do |format|
      format.html { redirect_to(highscores_url) }
      format.xml  { head :ok }
    end
  end
end
