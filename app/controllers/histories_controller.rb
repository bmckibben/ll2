class HistoriesController < InheritedResources::Base

  def recommended
  	base = 100
  	lamda = 23
  	history_limit = 40
  	if params[:recommend_params]
    	base = params[:recommend_params][:base] unless params[:recommend_params][:base].blank?
    	lamda = params[:recommend_params][:lamda] unless params[:recommend_params][:lamda].blank?
  	end  
  	@recommend_params = RecommendedParams.new(base: base, lamda: lamda)
  	acumulator = {}
  	acumulator2 = {}
  	weights = @recommend_params.weights
  	recent_history = History.all.order(date: :desc).limit(history_limit)
  	recent_history.each_with_index do |draw, history_pointer|
      	acumulator[draw.ball_1] = 0 unless acumulator.has_key? draw.ball_1
      	acumulator[draw.ball_1] += weights[history_pointer]
      	acumulator[draw.ball_2] = 0 unless acumulator.has_key? draw.ball_2
      	acumulator[draw.ball_2] += weights[history_pointer]
      	acumulator[draw.ball_3] = 0 unless acumulator.has_key? draw.ball_3
      	acumulator[draw.ball_3] += weights[history_pointer]
      	acumulator[draw.ball_4] = 0 unless acumulator.has_key? draw.ball_4
      	acumulator[draw.ball_4] += weights[history_pointer]
      	acumulator[draw.ball_5] = 0 unless acumulator.has_key? draw.ball_5
      	acumulator[draw.ball_5] += weights[history_pointer]
      	acumulator2[draw.powerball] = 0 unless acumulator2.has_key? draw.powerball
      	acumulator2[draw.powerball] += weights[history_pointer]   	 
  	end  

  	@recommended = acumulator.sort_by {|k, v| v}.reverse.to_h
  	@single_ball = acumulator2.sort_by {|k, v| v}.reverse.to_h

  end  


  private

    def history_params
      params.require(:history).permit(:date, :base, :landa, :ball_1, :ball_2, :ball_3, :ball_4, :ball_5, :powerball, :predicted_1, :predicted_2, :predicted_3, :predicted_4, :predicted_5, :predicted_powerball)
    end
end

