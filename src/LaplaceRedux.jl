module LaplaceRedux

include("utils.jl")

include("data/Data.jl")
using .Data

include("curvature/Curvature.jl")
using .Curvature

include("baselaplace/core_struct.jl")
include("full.jl")
include("kronecker/kron.jl")

include("subnet.jl")

export Laplace
export fit!, predict
export optimize_prior!,
    glm_predictive_distribution, posterior_covariance, posterior_precision

include("mlj_flux.jl")
export LaplaceApproximation

end
