#!/usr/bin/env bash
# pawnshop.html(아티팩트용, <html> 태그 없음)에 문서 틀을 씌워 GitHub Pages용 index.html을 만든다.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  # Pages 전용 머리말: 홈 화면 앱(PWA)과 공유 미리보기. 아티팩트(pawnshop.html)에는 넣지 않는다.
  cat <<'HEAD'
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="description" content="손님의 물건을 3D로 돌려보며 가품을 가려내는 골목 전당포 운영 게임">
<meta property="og:title" content="나는 전당포 사장이다">
<meta property="og:description" content="루페를 들고 가품을 가려내라. 14일 안에 현금 3,000만원을 만들면 가게를 지킨다.">
<meta property="og:type" content="website">
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" href="icons/icon-192.png">
<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">
<meta name="theme-color" content="#17120e">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="전당포 사장">
</head>
<body>
HEAD
  cat pawnshop.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html 생성 ($(wc -c < index.html) bytes)"
