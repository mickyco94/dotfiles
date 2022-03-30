alias gitoops='git reset --soft HEAD~1'
alias ..='cd ..'
alias grep='grep --color'
alias gitls='git branch -a'
alias gitkill='git reset --hard HEAD'
alias gitlog='git log --graph --pretty=format:'"'"'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"'"' --abbrev-commit'
alias gitlogfile='gitlog -p'
alias dockerstopall='docker stop $(docker ps -aq)'
alias dockerclean='docker container prune -f'
alias dockerls='docker ps -a'
alias dockervolumeclean='docker volume rm $(docker volume ls -q)'
alias dockerdie='docker system prune --all --force --volumes'
alias nugetwipe='dotnet nuget locals all --clear'
alias awslocal="aws --endpoint-url=http://localhost:4566"

function gitgrep() {
    gitls | grep $1
}

function gitpush(){
    local current_branch=`git branch --show-current`
    git push || git push --set-upstream origin $current_branch
}

function gitnew() {
    git checkout -b $1
}

function gitco() {
    if echo $1 | grep "remotes/"; then
        git checkout --track $1
        git pull || echo "No remote branch found"
    else
        git checkout $1
        git pull || echo "No remote branch found"
    fi
}

function gitc() {
    local branches=`gitgrep $1`
    local num_of_branches=`echo "$branches" | sed '/^s*$/d' | wc -l`
    
    if [[ num_of_branches -eq 0 ]]; then
        echo "No branches found matching $1"
        return 1
        elif [[ num_of_branches -eq 1 ]]; then
        gitco $branches
    else
        local local_branches=`echo "$branches" | grep -Ev 'remotes/'`
        local num_local_branches=`echo "$local_branches" | sed '/^s*$/d' | wc -l`
        
        if [[ num_local_branches -eq 1 ]]; then
            gitco $local_branches
        else
            echo "More than one branch matching $1 found"
            echo "--------------"
            echo "$branches"
        fi
    fi
}

function gitf() {
    current_branch=`git branch --show-current`
    
    git add -A
    
    if [[ -z $1 ]]; then
        commit_message='feat working too fast for commit messages'
    else
        commit_message=$1
    fi
    
    if ! git commit -m "$commit_message"; then
        echo "No changes to commit"
        return 1
    fi
    
    if ! git push; then
        if ! git push --set-upstream origin $current_branch; then
            echo "Failed to push"
            return 1
        fi
    fi
}
