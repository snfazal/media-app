class NotesController < ApplicationController



  def media_params
    params.required(:nots).permit( :name, :media_id)
  end
end
