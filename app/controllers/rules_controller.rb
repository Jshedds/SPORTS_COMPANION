class RulesController < ApplicationController
  def create
    @rule = rule.new(rule_params)
    authorize @rule
    if @rule.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @rule
    if @rule.update(rule_params)
      redirect_to @rule, notice: "Overview was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def rule_params
    params.require(@rule).permit(:game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type)
  end
end
