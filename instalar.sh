#!/usr/bin/env bash
# Instala o actualiza los agentes y skills del sistema en ~/.claude.
# Sobrescribe solo los agentes y skills con estos mismos nombres.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p "$HOME/.claude/agents" "$HOME/.claude/skills"
cp agents/*.md "$HOME/.claude/agents/"
for d in skills/*/; do
  name="$(basename "$d")"
  rm -rf "$HOME/.claude/skills/$name"
  cp -R "$d" "$HOME/.claude/skills/$name"
done
echo "Instalados $(ls agents/*.md | wc -l | tr -d ' ') agentes y $(ls -d skills/*/ | wc -l | tr -d ' ') skills en ~/.claude"
echo "Reinicia Claude Code para que los cargue."
