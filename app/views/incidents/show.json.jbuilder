# frozen_string_literal: true
json.extract! @incident, :id, :incident_type_id, :action_taken, :location,
              :user_id, :description, :open, :created_at, :updated_at
