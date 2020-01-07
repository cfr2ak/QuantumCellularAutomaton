function c_next(c, delta)
    c_new = deepcopy(c)
    for j in eachindex(c)
        c_new[j] = (c[j] + 1im * delta * c[j - 1] + 1im + conj(delta) * c[j + 1])
    end

    N = normalization_factor(c_new)
    c_new / sqrt(N)
    return c_new
end


function normalization_factor(c)

end


