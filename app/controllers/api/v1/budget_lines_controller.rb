module Api
  module V1
    class BudgetLinesController < ApplicationController
      layout false
      before_filter :authenticate_user!
      
      # GET /budget_lines
      # GET /budget_lines.json
      def index
        if params[:id]
          @budget_lines = BudgetLine.where(id: params[:id])
        else
          @budget_lines = BudgetLine.all
        end

        respond_to do |format|
          format.html # index.html.erb
          format.json # index.json.rabl
        end
      end

      # GET /budget_lines/1
      # GET /budget_lines/1.json
      def show
        @budget_line = BudgetLine.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.json # show.json.rabl
        end
      end

      # GET /budget_lines/new
      # GET /budget_lines/new.json
      def new
        @budget_line = BudgetLine.new

        respond_to do |format|
          format.html # new.html.erb
        end
      end

      # GET /budget_lines/1/edit
      def edit
        @budget_line = BudgetLine.find(params[:id])
      end

      # POST /budget_lines
      # POST /budget_lines.json
      def create
        @budget_line = BudgetLine.new(params[:budget_line])

        respond_to do |format|
          if @budget_line.save
            format.html { redirect_to @budget_line, notice: 'Budget line was successfully created.' }
            format.json { render status: :created, location: api_v1_budget_line_path(@budget_line) }
          else
            format.html { render action: "new" }
            format.json { render json: @budget_line.errors, status: :unprocessable_entity }
          end
        end
      end

      # PUT /budget_lines/1
      # PUT /budget_lines/1.json
      def update
        @budget_line = BudgetLine.find(params[:id])

        respond_to do |format|
          if @budget_line.update_attributes(params[:budget_line])
            format.html { redirect_to @budget_line, notice: 'Budget line was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @budget_line.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /budget_lines/1
      # DELETE /budget_lines/1.json
      def destroy
        @budget_line = BudgetLine.find(params[:id])
        @budget_line.destroy

        respond_to do |format|
          format.html { redirect_to budget_lines_url }
          format.json { head :no_content }
        end
      end
    end
  end
end