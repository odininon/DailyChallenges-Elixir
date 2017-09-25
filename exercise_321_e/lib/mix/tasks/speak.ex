defmodule Mix.Tasks.Speak do
    use Mix.Task

    @shortdoc "Gets local time and speaks it."
    def run(_) do
        Exercise321E.speak_current_time
    end
end