# prints a vt100 formatting escape code
e() {
  printf "\033[$@m"
}

# prints a background color escape
b() {
  e "10$1;1"
}

# prints a foreground color escape + bold
f() {
  e "3$1;1"
}

# reset format
r="$(e 0)"
# underline
u="$(e 4)"


cat <<EOF
┌────────────────┬────────────────┐      ┌───                              ───┐
│  highlighters  │      pens      │      │ maindak@sharktooth      arch linux │
├────────────────┼────────────────┤
│ $(b 1)     red      $r │$(f 1)      red       $r│        hardware $u                         $r
├────────────────┼────────────────┤        * laptop .........macbook pro 2014
│ $(b 2)    green     $r │$(f 2)     green      $r│        * ram ....................... 8 gb
├────────────────┼────────────────┤        * display .......... 2560x1600 13" 
│ $(b 3)    yellow    $r │$(f 3)     yellow     $r│            
├────────────────┼────────────────┤        software $u                         $r
│ $(b 4)     blue     $r │$(f 4)      blue      $r│        * window manager ........... bspwm
├────────────────┼────────────────┤        * panel ...................... eww
│ $(b 5)     pink     $r │$(f 5)      pink     $r │        * editor ................. VS Code
├────────────────┼────────────────┤        * browser ................ firefox
│ $(b 6)     cyan     $r │$(f 6)      cyan     $r │      │ * music ........... spotify_player │ 
└────────────────┴────────────────┘      └───                              ───┘
EOF
# colors for ascii art
g="$(f 2)"  # green for stems
rd="$(f 1)" # red for @@@ petals
b="$(f 4)"  # blue for (_) petals
p="$(f 5)"  # pink for www/vvv petals
y="$(f 3)"  # yellow for center of flowers

echo $(e '1;2') # bold + newline
echo   '                      '$b'_(_)_                          '$p'wWWWw   '$b'_'
echo   '          '$rd'@@@@       '$b'(_)@(_)   '$p'vVVVv     '$b'_     '$rd'@@@@  '$p'(___) '$b'_(_)_    (_)'
echo   '         '$rd'@@'$y'()'$rd'@@ '$p'wWWWw  '$b'(_)'$g'\    '$p'(___)   '$b'_(_)_  '$rd'@@'$y'()'$rd'@@   '$g'Y  '$b'(_)'$y'@'$b'(_) (_)'$y'@'$b'(_)'
echo   '          '$rd'@@@@  '$p'(___)     '$g'`|/    Y    '$b'(_)'$y'@'$b'(_)  '$rd'@@@@   '$g'\|/   '$b'(_)'$g'\    '$b'(_)'
echo $g'           /      Y       \|    \|/    /(_)    \|      |/      |  /   '$p'wWw'
echo $g'        \ |     \ |/       | / \ | /  \|/       |/    \|      \|//   '$p'(___)'
echo $g'    jgs \\|//   \\|///  \\\|//\\\|/// \|///  \\\|//  \\|//  \\\|//   \\|//'
echo $g'^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'$r