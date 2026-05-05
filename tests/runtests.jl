include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(65, 93, 13, 13, 12)
@assert score(signal_case_1) == 143
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(72, 91, 17, 14, 4)
@assert score(signal_case_2) == 119
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(95, 81, 24, 16, 13)
@assert score(signal_case_3) == 137
@assert classify(signal_case_3) == "review"
