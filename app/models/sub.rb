class Sub < ApplicationRecord

    has_many :topics, dependent: :destroy
    
end

# M odel - All the logic on the table or record, database 
  # restriants, assocations
  # V iew - user interaction, front end, keep logic to a min
  # C ontrollers / routes - direct traffic, actions - what 
  # you can do on the webpage
              #  HTTP VERBS
  # C create -> POST
  # R read -> GET
  # U update -> PUT / PATCH
  # D destroy -> DELETE

  # All Actions Must return a response
    # HTML XML JSON or redirect to an action that does
    # HTML by Default , html page of the action name action.html.erb
  
  # Callbacks - perform logic at certain actions 
  # before_action
  # after_action
  # skip_before_action
  # skip_after_action

  # before_action :method_to_call - all method
                                  # except:
  # before_action :method_to_call, only: [:index, :show, :new]

  # Partials are common / shared views 

  # READ - GET 
    # Page will see and interact with
    # shows record from the db onto the pages

    # index action - see all of the record for the table
      # @model_names = Model_name.all
      # gets all the records and set them to a variable

    # show action - see a single record, id 
      # @model_name = Model_name.find(params[:id])

    # new action - display the new record form, creates the 
    # record in memory
      # @model_name = Model_name.new

    # edit action - displays the edit record form, id
      # @model_name = Model_name.find(params[:id])

  # Create / POST 
    # - create action create a record, from the new action 
    # @model_name = Model_name.new(model_name_params)

    # if @model_name.save
    #   do something
    # else
    #   render :new
    # end

  # UPDATE / PUT PATCH
    # - update action, edit a record, edit form , id 

    #   @model_name = Model_name.find(params[:id])
    #   if @model_name.update(model_name_params)
    #     do something
    #   else
    #     render :edit
    #   end

  # Destroy / DELETE
    # - destroy action delete a record, id 
    
    # Model_name.find(params[:id]).destroy
    # do something

# model_name_params
    # - pass certain attr 

  # private 
  #   def model_name_params
  #     params.require(:model_name).permit(:attr, :everything that table has)
  #   end