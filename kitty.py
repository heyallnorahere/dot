import os
import json

script_path = os.path.abspath(__file__)
dot_dir = os.path.dirname(script_path)

print(f"startup_session {os.path.join(dot_dir, "sessions/devenv.session")}")

with open(os.path.join(dot_dir, "keybinds.json"), "r") as keybinds_file:
    keybind_data = json.load(keybinds_file)

for key, action in keybind_data.items():
    print(f"map {key} {action}")
