#!/bin/zsh
# 将规则列表转换为 mihomo 可用的 YAML 规则集
mihomo convert-ruleset domain yaml ./My.list My.mrs
mihomo convert-ruleset domain yaml ./Emby.yaml Emby.mrs
mihomo convert-ruleset domain yaml ./AI.yaml AI.mrs