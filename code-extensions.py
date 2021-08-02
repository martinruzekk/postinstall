import os
with open('code-extensions.txt') as f:
    for line in f:
        os.system('code --install-extension ' + line)
