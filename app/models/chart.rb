class Chart < ActiveRecord::Base
  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end

  def steps
    %w[chart_type chart_options]
  end

  def last_step?
  	current_step == steps.last
  end

end