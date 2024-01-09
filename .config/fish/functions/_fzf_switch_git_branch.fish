function _fzf_switch_git_branch
  # test -d, see if we're in a git folder
  if not test -d .git 
    return
  end

  set -l selected_branch $(git branch | _fzf_wrapper --prompt "Git branches...")
  set -l branch $(echo $selected_branch | sed "s/.* //")

  git co $branch

  commandline --function repaint
end
