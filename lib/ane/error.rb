module Ane
  class Error < ::RuntimeError; end

  module ErrorHandler
    def self.registered(app)
      app.disable(:show_exceptions)
      app.error do |error|
        case error
        when Ane::Error
          json ok: false, error: error.to_s
        else
          json ok: false, error_type: error.class, error_reason: error.to_s
        end
      end
    end
  end
end
