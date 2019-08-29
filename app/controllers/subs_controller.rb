class SubsController < ApplicationController
  
  # index action - see all of the record for the table
      # @model_names = Model_name.all
      # gets all the records and set them to a variable

  def index
    @subs = Sub.all
  end

   # show action - see a single record, id 
      # @model_name = Model_name.find(params[:id])
  def show
    @sub = Sub.find(params[:id])
  end
  # new action - display the new record form, creates the 
    # record in memory
      # @model_name = Model_name.new
  
  def new
    @sub = Sub.new
    render partial: 'form'
  end

   # Create / POST 
    # - create action create a record, from the new action 
    # @model_name = Model_name.new(model_name_params)
  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
    else
      render :new
    end
  end

   # edit action - displays the edit record form, id
      # @model_name = Model_name.find(params[:id])
  def edit
    @sub = Sub.find(params[:id])
    render partial: 'form'
  end

    # UPDATE / PUT PATCH
    # - update action, edit a record, edit form , id 

    #   @model_name = Model_name.find(params[:id])
    #   if @model_name.update(model_name_params)
    #     do something
    #   else
    #     render :edit
    #   end
  def update
    @sub = Sub.find(params[:id])

    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render :edit
    end
  end

  # Destroy / DELETE
    # - destroy action delete a record, id 
    
    # Model_name.find(params[:id]).destroy
    # do something
  def destroy
    Sub.find(params[:id]).destroy
    redirect_to subs_path
  end
  # private 
  #   def model_name_params
  #     params.require(:model_name).permit(:attr, :everything that table has)
  #   end
  private 
    def sub_params
      params.require(:sub).permit(:name)
    end  
end

