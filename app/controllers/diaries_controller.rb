class DiariesController < ApplicationController
 
  def index
      @diaries = Diary.all
  end

  def create
      if Diary.create(place: params["diary"]["place"], someone: params["diary"]["someone"], action: params["diary"]["action"]).valid?
          flash[:success] = "Created!"
          redirect_to "/index"
      else
          flash[:danger] = "Error!全部入力してね"
          redirect_to "/new"
      end
  end
  
  def new
  end
  
  def top
  end
  
  def destroy
      diary = Diary.find(params["id"])
      diary.destroy
      flash[:success] = "Deleted!"
      redirect_to "/index"
  end

  def edit
      @diary = Diary.find(params["id"])
  end
  
  def update
      diary = Diary.find(params["id"])
      diary.place = params["diary"]["place"]
      diary.someone = params["diary"]["someone"]
      diary.action = params["diary"]["action"]
      diary.save
      flash[:success] = "Updated!"
      redirect_to "/index"
  end
  
  def show
      @diary = Diary.find(params["id"])
      #@user = User.find(params["id"])
      #user.name = params["user"]["name"]
      #@user = User.find(params["id"])
  end
end

