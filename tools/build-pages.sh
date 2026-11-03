#!/usr/bin/env bash
# pawnshop.html(아티팩트용, <html> 태그 없음)에 문서 틀을 씌워 GitHub Pages용 index.html을 만든다.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat pawnshop.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html 생성 ($(wc -c < index.html) bytes)"
