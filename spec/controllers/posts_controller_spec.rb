require 'rails_helper'

describe PostsController do
  describe "#new" do
    context "when not logged in" do
      it "redirects to posts index" do
        get :new
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
