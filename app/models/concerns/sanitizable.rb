module Sanitizeable 
    extend ActiveSupport::Concern

    included do
        before_validation :sanitize_text_fields
    end 

private

def sanitize_text_fields 
    sanitizable_fields.each do |field|
        value = public_send(field)
        