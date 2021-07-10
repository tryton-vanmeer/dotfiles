function cdg -d "Change directory to root of GIT repo"
    cd (git rev-parse --show-toplevel)
end
