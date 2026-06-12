#!/bin/zsh
set -euo pipefail

# 将规则列表转换为 mihomo 可用的 YAML 规则集
for src in My.list Emby.yaml AI.yaml; do
  if [[ "$src" == *.list ]]; then
    out="${src%.list}.mrs"
  else
    out="${src%.yaml}.mrs"
  fi

  mihomo convert-ruleset domain yaml "$src" "$out" >/dev/null 2>&1
  echo "$out"
done