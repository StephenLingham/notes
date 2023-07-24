Function EditProfile {
    code $profile
}

set-alias ep EditProfile

Function ReloadProfile {
    . $profile
}

Function OpenCurrentDirectoryWithVsCode {
    code .
}

set-alias c OpenCurrentDirectoryWithVsCode

Function OpenCurrentDirectoryWithFileExplorer {
    explorer .
}

set-alias e OpenCurrentDirectoryWithFileExplorer

set-alias p pwd

Function ListAllIncludingHidden {
    ls -Force
}

set-alias l ListAllIncludingHidden

Function U {
    cd ..
}

Function Uu {
    cd ../..
}

Function Uuu {
    cd ../../..
}

Function Uuuu {
    cd ../../../..
}

Function Uuuuu {
    cd ../../../../..
}

Function DeleteAllBinAndObjFoldersRecursively {
    Get-ChildItem .\ -include bin,obj -Recurse | foreach ($_) { remove-item $_.fullname -Force -Recurse }
}

Function GitStatus {
    git status
}

set-alias gs GitStatus

Function GitStageAll {
    git stage -A
}

set-alias gsa GitStageAll

Function GitCommit($message) {
    git commit -m $message
}

set-alias gcom GitCommit

Function GitBranchesAll {
    git branch -a
}

set-alias gba GitBranchesAll

Function DeletedAllMergedGitBranches {
    git for-each-ref --format '%(refname:short)' refs/heads --merged=develop | Select-String -Pattern '^(?!.*(master|main|dev|release)).*$' | ForEach-Object { git branch -d $_ }
}
