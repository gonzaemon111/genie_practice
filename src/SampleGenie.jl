module SampleGenie

using Genie, Genie.Router, Genie.Renderer, Genie.AppServer

function main()
  Base.eval(Main, :(const UserApp = SampleGenie))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = SampleGenie.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
