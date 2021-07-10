function get-recipe -d "Pass a recipe url to plainoldrecipe.com and convert to markdown."
    curl -sG "https://plainoldrecipe.com/recipe" -d "url=$argv" | pandoc -f html -t markdown
end
