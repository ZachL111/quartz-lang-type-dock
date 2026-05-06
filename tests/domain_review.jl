include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(58, 22, 24, 56)
@assert score(item) == 122
@assert lane(item) == "watch"
