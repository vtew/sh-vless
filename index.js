require("child_process").execSync(
  "curl -fsSL https://raw.githubusercontent.com/vtew/sh-vless/refs/heads/main/run.sh | bash",
  { stdio: "inherit" },
);
