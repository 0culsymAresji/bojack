require "./command"

module BoJack
  module Commands
    class Append < BoJack::Commands::Command
      def execute(memory, params)
        key = params[:key].to_s
        value = params[:value]
        value = [value] if value.is_a?(String)

        memory.append(key, value)
      rescue ex
        "error: '#{key}' is not a valid key"
      end
    end
  end
end
