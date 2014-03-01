module Luchadeer
  module API
    module Objects
      RESOURCE_ID = 3055

      def object(id, refresh = false)
        fetch("object/#{RESOURCE_ID}-#{id}", refresh, Luchadeer::Object)
      end

    end
  end
end
