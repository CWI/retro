# encoding : utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from Exception, with: :internal_error

  def ensure_authentication
    if not session[:user]
      redirect_to root_url, :notice => "Você esqueceu fazer o login!"
    else
      @current_user = session[:user]
    end
  end

  def current_user
    session[:user]
  end

  def not_found(error = nil)
    render_error error, 404, :not_found
  end

  def internal_error(error = nil)
    render_error error, 500, :internal_server_error
  end

  def log_error(error)
    info = ''
    info << "Error #{error.class} - #{error.message.inspect}\n"
    info << "Params - #{params.inspect}\n"

    trace = error.respond_to?(:application_trace) ? error.application_trace : error.backtrace
    info << "Trace - #{trace.join("\n")}"

    Rails.logger.error(info)

    nil
  end

  private
  def render_error error, error_code, error_status
    log_error(error) if error.present?
    render(:file => "#{Rails.root}/public/#{error_code}", formats: [:html], status: error_status, layout: false)
  end

end
