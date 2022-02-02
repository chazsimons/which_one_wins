# frozen_string_literal: true

module Types
  class CharacterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :image, String, null: false
    field :wins, Integer, null: false
  end
end
