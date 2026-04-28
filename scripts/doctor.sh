#!/usr/bin/env bash
set -uo pipefail

ERR=0
WARN=0

ok()   { echo "  [OK] $1"; }
warn() { echo "  [--] $1"; WARN=$((WARN+1)); }
fail() { echo "  [!!] $1"; ERR=$((ERR+1)); }

echo "================================================"
echo " Doctor: Link and Pair Validation"
echo "================================================"

# Check each backtick-wrapped path in a file's ## References section
check_refs() {
    local file="$1"
    if [[ ! -f "$file" ]]; then
        warn "$file — not found (skipping)"
        return
    fi
    local in_refs=0
    while IFS= read -r line; do
        [[ "$line" =~ ^"## References" ]] && in_refs=1 && continue
        [[ $in_refs -eq 1 && "$line" =~ ^"## " ]] && in_refs=0
        if [[ $in_refs -eq 1 ]]; then
            tmp="$line"
            while [[ "$tmp" =~ \`([^\`]+)\` ]]; do
                ref="${BASH_REMATCH[1]}"
                tmp="${tmp#*\`${ref}\`}"
                [[ "$ref" == */* || "$ref" == *.* ]] || continue
                if [[ -e "$ref" ]]; then
                    ok "$file -> $ref"
                else
                    warn "$file -> $ref  (not found)"
                fi
            done
        fi
    done < "$file"
}

echo
echo "[1] Reference Links"
check_refs "CLAUDE.md"
check_refs "README.md"

echo
echo "[2] Language Pairs"
for base in docs/ARCHITECTURE docs/USAGE_GUIDE docs/SETUP_GUIDE docs/SKILLS; do
    if [[ -f "${base}.en.md" && -f "${base}.ko.md" ]]; then
        ok "${base} (.en + .ko)"
    elif [[ -f "${base}.en.md" ]]; then
        warn "${base}.ko.md — missing"
    else
        fail "${base}.en.md — missing"
    fi
done

echo
echo "================================================"
if [[ $ERR -gt 0 ]]; then
    echo " FAIL   errors=$ERR   warnings=$WARN"
    exit 1
elif [[ $WARN -gt 0 ]]; then
    echo " PASS   warnings=$WARN"
else
    echo " PASS"
fi
echo "================================================"
