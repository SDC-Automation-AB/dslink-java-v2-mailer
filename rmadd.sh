# Specify version
version=$1

if [ -z "${version}" ]; then
    echo "Specify version like '0.0.1'"
    exit
fi

git push --delete origin "v$version"
git tag --delete "v$version"
git tag "v$version"
git push origin "v$version"
