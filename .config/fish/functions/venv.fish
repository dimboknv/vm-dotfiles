function venv --description 'Create python virtualenv in .pyenv'
    echo Creating virtualenv .venv`
    python -m venv .venv
    source .venv/bin/activate.fish
end
