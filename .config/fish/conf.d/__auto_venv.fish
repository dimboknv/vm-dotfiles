function __auto_venv --on-variable PWD --description "Automatically activate python venv"
    if test .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end
