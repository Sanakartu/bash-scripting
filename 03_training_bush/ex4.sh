
read -p "Downloading a site: " site

if [[ -f "wiki.html" ]]; then
    echo "File is allready on the disk."
    read -p "Do you want to delete it? (y/n): " answer
    if [[ "$answer" == "y" ]]; then
        rm "wiki.html"
        echo "File deleted."
    else
        echo "File not deleted."
    fi
else
    echo "Downloading a site: $site"
    curl "$site" -o "wiki.html"
    echo "File downloaded."
fi