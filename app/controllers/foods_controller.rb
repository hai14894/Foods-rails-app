class FoodsController < ApplicationController
    
    def index
        @foods = Food.all()
    end

    def show
        @showfood = Food.find(params["id"])
    end

    def new 

    end

    def create 
        new_food = Food.create(name: params["name"], price: params["price"].to_i)
        redirect_to index_path
    end

    def edit 
        @food = Food.find(params["id"])
    end
    def update 
        updated_food = Food.update(params["id"], name: params["name"], price: params["price"])
        redirect_to show_path(params["id"])
    end

    def destroy
        destroyed_food = Food.find(params["id"]).destroy
        redirect_to index_path
    end
end