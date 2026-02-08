#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$repo_root" \
  -type d \( -name .git -o -name build -o -name .cache -o -path "$repo_root/docs/docs-gen" \) -prune -o \
  -type f \( \
    -name "*.c" -o -name "*.cc" -o -name "*.cpp" -o -name "*.cxx" -o \
    -name "*.h" -o -name "*.hh" -o -name "*.hpp" -o -name "*.hxx" \
  \) -print0 \
| xargs -0 clang-format -i
