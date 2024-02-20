# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
    identifier :id

    view :normal do
      fields :username, :email, :first_name, :last_name
    end
  
    # view :expenses do 
    #   association :expenses, blueprint: BlogBlueprint
    # end
  
  end