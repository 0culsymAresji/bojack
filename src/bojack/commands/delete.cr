require "./command"

module BoJack
  module Commands
    class Delete < BoJack::Commands::Command
      def execute(memory, params)
        memory.delete(params.key).first
      rescue
        "error: '#{params.key}' is not a valid key"
      end
    end
  end
end
