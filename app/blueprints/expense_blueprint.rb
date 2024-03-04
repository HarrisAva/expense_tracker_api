# frozen_string_literal: true

class ExpenseBlueprint < Blueprinter::Base
    identifier :id

    view :normal do
        fields :date, :title, :amount, :catetory_id
    end

    vidw :extended do
        fields :date, :title, :amount, :description, :category_id
    end
end