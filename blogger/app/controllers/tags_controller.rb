class TagsController < ApplicationController
    before_filter :prevent_destroy, only: [:destroy]
    def prevent_destroy
        unless logged_in?
            redirect_to root_path
            return false
        end
    end
    def show
        @tag = Tag.find(params[:id])
    end
end
