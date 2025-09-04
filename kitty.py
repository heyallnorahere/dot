import os

script_path = os.path.abspath(__file__)
dot_dir = os.path.dirname(script_path)
shell_path = os.path.join(dot_dir, "tmux-sessions", "bin", "devenv.zsh")

print(f"shell {shell_path}")
