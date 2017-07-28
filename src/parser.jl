function clear_comments(data::String)
    res = replace(data, r"(%.*\n)", "")
    res = replace(res, r"(comment [^\n]*\n)", "")

    return res
end

mutable struct Parser
    data::String
    token
    token_type
    _next_token
    hashtable::Dict
    mode
    records::Dict
    line::Int64

    # regular expressions
    white::Regex
    nl::Regex
    token_re::Regex
end

function Parser(data::String)
    # compile some regexes
    white = r"[\n|\s]+"
    nl = r"[\n]"
    token_re = r"([^\s\"#%'(){}@,=]+|\n|@|\"|{|}|=|,)"

    Parser(data, 
           1,
           white,
           nl,
           token_re)
end

function tokenize(bib::Parser)
end

function parser(bib::Parser)
    for item in matchall(token_re, data)
    for item in self.token_re.finditer(self.data):
        i = item.group(0)
        if self.white.match(i) :
            if self.nl.match(i) :
                self.line += 1
            continue
        else :
            yield i            
end
