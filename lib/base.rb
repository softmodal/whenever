module Whenever
  
  def self.cron(options)
    Whenever::JobList.new(options).generate_cron_output
  end
  
  def self.path
    if defined?(RAILS_ROOT)
      RAILS_ROOT 
    elsif defined?(::RAILS_ROOT)
      ::RAILS_ROOT
    elsif defined?(Merb)
      Merb.root if Merb.root
    end
  end
  
end