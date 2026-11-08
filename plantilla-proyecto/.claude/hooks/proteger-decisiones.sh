#!/usr/bin/env bash
# Congela docs/decisiones.md: solo se permite AGREGAR líneas con `>>`.
# Bloquea Edit/Write/MultiEdit sobre el archivo y cualquier comando Bash que lo trunque, mueva o borre.
in="$(cat)"
case "$in" in *decisiones.md*) ;; *) exit 0 ;; esac
tool="$(printf '%s' "$in" | grep -o '"tool_name": *"[^"]*"' | head -1 | sed 's/.*: *"//;s/"$//')"
deny() { echo "BLOQUEADO: docs/decisiones.md está congelado. Solo se agrega con >>. Para cambiar una decisión, la usuaria edita el archivo a mano fuera de los agentes." >&2; exit 2; }
case "$tool" in
  Edit|MultiEdit|Write|NotebookEdit) deny ;;
  Bash)
    cmd="$(printf '%s' "$in" | grep -o '"command": *"[^"]*\(\\"[^"]*\)*"' | head -1)"
    cmd="$(printf '%s' "$cmd" | sed -e 's/2>&1//g' -e 's|2>/dev/null||g')"
    printf '%s' "$cmd" | grep -Eq '(sed +-[a-z]*i|perl +-[a-z]*i|\brm\b|\bmv\b|\bcp\b|truncate|\btee\b( +-[^a ]*)? |[^>]>[^>])' && deny
    ;;
esac
exit 0
