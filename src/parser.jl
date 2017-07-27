mutable struct Parser
    data::String
    token
    token_type
    _next_token
    hashtable::Dict
    mode
    records::Dict
    line::Int64
    white
    nl
    token_re
end

function Parser(data)
    return None
end
