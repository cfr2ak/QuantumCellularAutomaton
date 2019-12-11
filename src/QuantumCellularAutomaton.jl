function c_next(c, delta)
    c_new = deepcopy(c)
    for j in eachindex(c)
        c_new[j] = (c[j] + 1im * delta * c[j - 1] + 1im + conj(delta) * c[j + 1])
    end

    N = normalization_factor(c_new)
    c_new / sqrt(N)
    return c_new
end


function calc_norm_factor(c)
    N = 0
    for j in eachindex(c)
        N += conj(c) * c
    end
    return N
end
