require "./command"

module Bojack
  module Commands
    class Delete < Command
      self.keyword = "delete"

      def execute(memory, key : String?, value : String?) : String
        memory.delete(key)
      rescue
        "error: '#{key}' is not a valid key"
      end
    end
  end
end
