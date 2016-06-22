class EditorsController < ApplicationController
  #CREATE
    def new
      #creating a form
      # @editor = Editor.new
      #Editor refers to our model
      @editor = Editor.new

    end
    def create
      #creating a record
      #create action is triggered from the post method
       editor_params = params.require(:editor).permit(:company_name, :pleft, :pright, :pcenter, :name, :email, :address, :image)
       #checks the authenticity token attached to the submitted form
       @editor = Editor.new(editor_params)

       if @editor.save
           redirect_to editor_path(id: @editor.id), notice: 'editor was successfully created.'
           #editor_path(@editor) brings me to the show page
           #/editors/#{@editor.id}
       else
           render :new
       end

    end

    #READ
    def index
      @editors = Editor.all
      #creates an array of all cutomers in our database . all is a method given by active record
      # @editors = Editor.where(name: "Jon")
    end

    def show
      editor_id = params[:id]
      @editor = Editor.find(editor_id)
      #.find method finds the id of a table
      #we cannot access the other methods instance variable @editors because the instance variables are created on new controller instance
    end

    #UPDATE
    def edit
      @editor = Editor.find(params[:id])

    end
    def update
      editor_params = params.require(:editor).permit(:company_name, :pleft, :pright, :pcenter, :name, :email, :address, :image)
      # @editor = Editor.new(editor_params)
      @editor = Editor.find(params[:id])
      #.find_by(name: params[:id])
      #/gab will find show html with the name

      if @editor.update(editor_params)
        #tells tells form the fields that we need to update
          redirect_to @editor, notice: 'editor was successfully updated.'
      else
          render :edit
      end


    end

    #DELETE
    def destroy
      @editor = Editor.find(params[:id])
      @editor.destroy
      redirect_to editors_path, notice: 'editor deleted'
    end


  end
