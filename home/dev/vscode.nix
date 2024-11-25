{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      yzhang.markdown-all-in-one
      ms-vscode-remote.remote-ssh
      vscode-icons-team.vscode-icons
      redhat.vscode-yaml
    ];
   };
}