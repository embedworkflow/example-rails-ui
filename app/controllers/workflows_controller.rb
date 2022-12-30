class WorkflowsController < ApplicationController
  before_action :load_embed_workflow_jwt

  def index
  end

  def show
  end

  def new
  end

  private
    def load_embed_workflow_jwt
      return @embed_workflow_jwt if defined?(@embed_workflow_jwt)

      current_time = Time.now.to_i
      exp          = current_time + 3600
      payload      = { sub: ENV["EMBED_WORKFLOW_USER_KEY"], exp: exp, iat: current_time }

      @embed_workflow_jwt = JWT.encode(payload, ENV["EMBED_WORKFLOW_SECRET_KEY"], "HS256")
    end
end
