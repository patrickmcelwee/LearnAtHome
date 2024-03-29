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

describe BasketsController do

  # This should return the minimal set of attributes required to create a valid
  # Basket. As you add validations to Basket, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BasketsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all baskets as @baskets" do
      basket = Basket.create! valid_attributes
      get :index, {}, valid_session
      assigns(:baskets).should eq([basket])
    end
  end

  describe "GET show" do
    it "assigns the requested basket as @basket" do
      basket = Basket.create! valid_attributes
      get :show, {:id => basket.to_param}, valid_session
      assigns(:basket).should eq(basket)
    end
  end

  describe "GET new" do
    it "assigns a new basket as @basket" do
      get :new, {}, valid_session
      assigns(:basket).should be_a_new(Basket)
    end
  end

  describe "GET edit" do
    it "assigns the requested basket as @basket" do
      basket = Basket.create! valid_attributes
      get :edit, {:id => basket.to_param}, valid_session
      assigns(:basket).should eq(basket)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Basket" do
        expect {
          post :create, {:basket => valid_attributes}, valid_session
        }.to change(Basket, :count).by(1)
      end

      it "assigns a newly created basket as @basket" do
        post :create, {:basket => valid_attributes}, valid_session
        assigns(:basket).should be_a(Basket)
        assigns(:basket).should be_persisted
      end

      it "redirects to the created basket" do
        post :create, {:basket => valid_attributes}, valid_session
        response.should redirect_to(Basket.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved basket as @basket" do
        # Trigger the behavior that occurs when invalid params are submitted
        Basket.any_instance.stub(:save).and_return(false)
        post :create, {:basket => {}}, valid_session
        assigns(:basket).should be_a_new(Basket)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Basket.any_instance.stub(:save).and_return(false)
        post :create, {:basket => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested basket" do
        basket = Basket.create! valid_attributes
        # Assuming there are no other baskets in the database, this
        # specifies that the Basket created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Basket.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => basket.to_param, :basket => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested basket as @basket" do
        basket = Basket.create! valid_attributes
        put :update, {:id => basket.to_param, :basket => valid_attributes}, valid_session
        assigns(:basket).should eq(basket)
      end

      it "redirects to the basket" do
        basket = Basket.create! valid_attributes
        put :update, {:id => basket.to_param, :basket => valid_attributes}, valid_session
        response.should redirect_to(basket)
      end
    end

    describe "with invalid params" do
      it "assigns the basket as @basket" do
        basket = Basket.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Basket.any_instance.stub(:save).and_return(false)
        put :update, {:id => basket.to_param, :basket => {}}, valid_session
        assigns(:basket).should eq(basket)
      end

      it "re-renders the 'edit' template" do
        basket = Basket.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Basket.any_instance.stub(:save).and_return(false)
        put :update, {:id => basket.to_param, :basket => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested basket" do
      basket = Basket.create! valid_attributes
      expect {
        delete :destroy, {:id => basket.to_param}, valid_session
      }.to change(Basket, :count).by(-1)
    end

    it "redirects to the baskets list" do
      basket = Basket.create! valid_attributes
      delete :destroy, {:id => basket.to_param}, valid_session
      response.should redirect_to(baskets_url)
    end
  end

end
