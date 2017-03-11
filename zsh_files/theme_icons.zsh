typeset -gAH icons
local LC_ALL="" LC_CTYPE="en_US.UTF-8"
icons=(
      LEFT_SEGMENT_SEPARATOR         $'\uE0B0'              # 
      RIGHT_SEGMENT_SEPARATOR        $'\uE0B2'              # 
      LEFT_SEGMENT_END_SEPARATOR     ' '                    # Whitespace
      LEFT_SUBSEGMENT_SEPARATOR      $'\uE0B1'              # 
      RIGHT_SUBSEGMENT_SEPARATOR     $'\uE0B3'              # 
      CARRIAGE_RETURN_ICON           $'\u21B5'              # ↵
      ROOT_ICON                      $'\uF201'              # 
      RUBY_ICON                      $'\uF219 '             # 
      AWS_ICON                       $'\uF270'              # 
      AWS_EB_ICON                    $'\U1F331 '            # 🌱
      BACKGROUND_JOBS_ICON           $'\uF013 '             # 
      TEST_ICON                      $'\uF291'              # 
      TODO_ICON                      $'\u2611'              # ☑
      BATTERY_ICON                   $'\U1F50B'             # 🔋
      DISK_ICON                      $'\uF0A0 '             # 
      OK_ICON                        $'\u2713'              # ✓
      FAIL_ICON                      $'\u2718'              # ✘
      SYMFONY_ICON                   'SF'
      NODE_ICON                      $'\u2B22'              # ⬢
      MULTILINE_FIRST_PROMPT_PREFIX  $'\u256D'$'\U2500'     # ╭─
      MULTILINE_SECOND_PROMPT_PREFIX $'\u2570'$'\U2500 '    # ╰─
      APPLE_ICON                     $'\uF179'              # 
      FREEBSD_ICON                   $'\U1F608 '            # 😈
      LINUX_ICON                     $'\uF17C'              # 
      SUNOS_ICON                     $'\uF185 '             # 
      HOME_ICON                      $'\uF015'              # 
      HOME_SUB_ICON                  $'\uF07C'              # 
      FOLDER_ICON                    $'\uF115'              # 
      NETWORK_ICON                   $'\uF09E'              # 
      LOAD_ICON                      $'\uF080 '             # 
      SWAP_ICON                      $'\uF0E4'              # 
      RAM_ICON                       $'\uF0E4'              # 
      SERVER_ICON                    $'\uF233'              # 
      VCS_UNTRACKED_ICON             $'\uF059'              # 
      VCS_UNSTAGED_ICON              $'\uF06A'              # 
      VCS_STAGED_ICON                $'\uF055'              # 
      VCS_CHANGED_ICON               $'\uF067'              # 
      VCS_STASH_ICON                 $'\uF01C '             # 
      VCS_INCOMING_CHANGES_ICON      $'\uF01A '             # 
      VCS_OUTGOING_CHANGES_ICON      $'\uF01B '             # 
      VCS_TAG_ICON                   $'\uF217 '             # 
      VCS_BOOKMARK_ICON              $'\uF27B'              # 
      VCS_COMMIT_ICON                $'\uF221 '             # 
      VCS_BRANCH_ICON                $'\uF126'              # 
      VCS_REMOTE_BRANCH_ICON         $'\u2192'              # →
      VCS_GIT_ICON                   $'\uF1D3 '             # 
      VCS_GIT_GITHUB_ICON            $'\uF113 '             # 
      VCS_GIT_BITBUCKET_ICON         $'\uF171 '             # 
      VCS_GIT_GITLAB_ICON            $'\uF296 '             # 
      VCS_HG_ICON                    $'\uF0C3 '             # 
      VCS_SVN_ICON                   '(svn) '
      RUST_ICON                      $'\uE6A8'              #  
      PYTHON_ICON                    $'\U1F40D'             # 🐍
      SWIFT_ICON                     ''
      ELIXIR_ICON                    $'\Uf0c3'
      PUBLIC_IP_ICON                 ''
      LOCK_ICON                      $'\UE138'              # 
      EXECUTION_TIME_ICON            $'\uF253'
      SSH_ICON                       '(ssh)'
    )


# Safety function for printing icons
# Prints the named icon, or if that icon is undefined, the string name.
function print_icon() {
  local icon_name=$1
  local ICON_USER_VARIABLE=${icon_name}
  echo -n "${icons[$icon_name]}"
}

get_icon_names() {
  for key in ${(@k)icons}; do
    echo "$key: ${icons[$key]}"
  done
}
