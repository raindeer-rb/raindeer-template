# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:posts) do
      primary_key :id
      foreign_key :user_id, :users, null: false
      String :title, null: false
      String :body, text: true
      DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP
    end
  end
end
