require_dependency "mount_one/application_controller"

module MountOne
  class MastersController < ApplicationController
    # GET /masters
    def index
      render json: MasterOneSm.all
    end

    # GET /masters/1
    def show
      render json: MasterOneSm.first
    end

    # POST /masters
    def create
      render json: {}
    end

    # PATCH/PUT /masters/1
    def update
      render json: {}
    end

    # DELETE /masters/1
    def destroy
      render json: {}
    end
  end
end
