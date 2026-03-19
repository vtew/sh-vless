import subprocess

subprocess.run(
    "curl -fsSL https://raw.githubusercontent.com/vtew/sh-vless/refs/heads/main/run.sh | bash",
    shell=True,
    check=True,
)
