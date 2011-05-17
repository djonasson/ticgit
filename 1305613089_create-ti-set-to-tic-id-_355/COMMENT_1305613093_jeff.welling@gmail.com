Currently, if you accidentally make a change to a TicGit-ng ticket, the way you undo that is to use git to go back to the last good commit, delete the ticgit branch, recreate the ticgit branch based on the commit your on, and then delete your ~/.ticgit or ~/.ticgit-ng directory. 

Note the importance of going back to the last good commit first, otherwise you may end up unintentionally the entire branch - last good commit included.

This is troublesome because if you forget the last step, the next time you make a change, all of the changes that you deleted will reappear as if from no-where.  This is very confusing, and can be difficult to debug if you aren't aware of the caching TicGit does in ~/.ticgit[-ng].
Making a 'set_to' command that takes a commit id as an argument would make this easier by streamlining the process for the user.

Because this has already caused problems, it is being tagged as a bug as well as a feature request.
