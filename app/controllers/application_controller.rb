class ApplicationController < ActionController::Base
def after_signing_out(resource)
  root_path
end
  allow_browser versions: :modern
def after_sign_in_path_for(resource)
  dashboard_index_path
end
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
end
