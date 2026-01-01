function success_rate(speed)
    if speed == 0
        return 0.0
    elseif speed <= 4
        return 1.0
    elseif speed <= 8
        return 0.9
    elseif speed == 9
        return 0.8
    else
        return 0.77
    end
end

function production_rate_per_hour(speed)
    success_rate(speed) * speed * 221.0
end

function working_items_per_minute(speed)
    round(Int64, production_rate_per_hour(speed) ÷ 60)
end
