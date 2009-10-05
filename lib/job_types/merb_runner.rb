module Whenever
  module Job
    class MerbRunner < Whenever::Job::Default

      def output
        path_required
        %Q(merb -r -e #{@environment} #{task.inspect})
      end
      
    end
  end
end
