require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SearchConfigurationsController do

  # This should return the minimal set of attributes required to create a valid
  # SearchConfiguration. As you add validations to SearchConfiguration, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all search_configurations as @search_configurations" do
      search_configuration = SearchConfiguration.create! valid_attributes
      get :index
      assigns(:search_configurations).should eq([search_configuration])
    end
  end

  describe "GET show" do
    it "assigns the requested search_configuration as @search_configuration" do
      search_configuration = SearchConfiguration.create! valid_attributes
      get :show, :id => search_configuration.id
      assigns(:search_configuration).should eq(search_configuration)
    end
  end

  describe "GET new" do
    it "assigns a new search_configuration as @search_configuration" do
      get :new
      assigns(:search_configuration).should be_a_new(SearchConfiguration)
    end
  end

  describe "GET edit" do
    it "assigns the requested search_configuration as @search_configuration" do
      search_configuration = SearchConfiguration.create! valid_attributes
      get :edit, :id => search_configuration.id
      assigns(:search_configuration).should eq(search_configuration)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SearchConfiguration" do
        expect {
          post :create, :search_configuration => valid_attributes
        }.to change(SearchConfiguration, :count).by(1)
      end

      it "assigns a newly created search_configuration as @search_configuration" do
        post :create, :search_configuration => valid_attributes
        assigns(:search_configuration).should be_a(SearchConfiguration)
        assigns(:search_configuration).should be_persisted
      end

      it "redirects to the created search_configuration" do
        post :create, :search_configuration => valid_attributes
        response.should redirect_to(SearchConfiguration.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved search_configuration as @search_configuration" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchConfiguration.any_instance.stub(:save).and_return(false)
        post :create, :search_configuration => {}
        assigns(:search_configuration).should be_a_new(SearchConfiguration)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchConfiguration.any_instance.stub(:save).and_return(false)
        post :create, :search_configuration => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested search_configuration" do
        search_configuration = SearchConfiguration.create! valid_attributes
        # Assuming there are no other search_configurations in the database, this
        # specifies that the SearchConfiguration created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SearchConfiguration.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => search_configuration.id, :search_configuration => {'these' => 'params'}
      end

      it "assigns the requested search_configuration as @search_configuration" do
        search_configuration = SearchConfiguration.create! valid_attributes
        put :update, :id => search_configuration.id, :search_configuration => valid_attributes
        assigns(:search_configuration).should eq(search_configuration)
      end

      it "redirects to the search_configuration" do
        search_configuration = SearchConfiguration.create! valid_attributes
        put :update, :id => search_configuration.id, :search_configuration => valid_attributes
        response.should redirect_to(search_configuration)
      end
    end

    describe "with invalid params" do
      it "assigns the search_configuration as @search_configuration" do
        search_configuration = SearchConfiguration.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchConfiguration.any_instance.stub(:save).and_return(false)
        put :update, :id => search_configuration.id, :search_configuration => {}
        assigns(:search_configuration).should eq(search_configuration)
      end

      it "re-renders the 'edit' template" do
        search_configuration = SearchConfiguration.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchConfiguration.any_instance.stub(:save).and_return(false)
        put :update, :id => search_configuration.id, :search_configuration => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested search_configuration" do
      search_configuration = SearchConfiguration.create! valid_attributes
      expect {
        delete :destroy, :id => search_configuration.id
      }.to change(SearchConfiguration, :count).by(-1)
    end

    it "redirects to the search_configurations list" do
      search_configuration = SearchConfiguration.create! valid_attributes
      delete :destroy, :id => search_configuration.id
      response.should redirect_to(search_configurations_url)
    end
  end

end
