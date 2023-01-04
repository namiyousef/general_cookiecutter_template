initialise_git () {

    local USER="${1}"
    local REPO_NAME="${2}"

    local git_url=https://github.com/$USER/$REPO_NAME

    git remote add origin $git_url
    git push -u origin master

}