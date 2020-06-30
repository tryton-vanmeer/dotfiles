function get-recipe
    curl -sG "https://plainoldrecipe.com/recipe" -d "url=$argv" | pandoc -f html -t markdown
end