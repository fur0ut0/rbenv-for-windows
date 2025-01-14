# ---------------------------------------------------------------
# File          : rubyw.ps1
# Authors       : Aoran Zeng <ccmywish@qq.com>
# Created on    : <2023-03-03>
# Last modified : <2023-03-03>
#
# rubyw:
#
#   Delegate to real rubyw.exe
#
#   Relay: about 95ms
#
# ----------
# Note:
#
# When you type 'rubyw',     this file is hit
# When you type 'rubyw.exe', this file is NOT hit,
#                            instead, rubyw.exe in env var path is hit
# ---------------------------------------------------------------

. $env:RBENV_ROOT\rbenv\lib\version.ps1

$version, $_ = get_current_version_with_setmsg_from_fake_ruby

$rubyexe = get_ruby_exe_location_by_version "rubyw" $version

& $rubyexe $args
