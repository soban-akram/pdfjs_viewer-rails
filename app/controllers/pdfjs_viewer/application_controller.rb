module PdfjsViewer
  class ApplicationController < ActionController::Base
    after_action :allow_iframe

    private

    def allow_iframe
      response.headers.delete 'X-Frame-Options'
    end
  end
end
