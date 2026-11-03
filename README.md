# 나는 전당포 사장이다

삼촌에게 물려받은 골목 전당포. 손님이 가져온 물건을 3D로 돌려보고 루페로 들여다보며 가품과 장물을 가려내고, 흥정하고, 맡아 주고, 되팔아 14일 안에 현금 3,000만원을 만드는 운영 게임입니다. 현재 버전은 **프로토타입 v0.7**입니다.

## 바로 플레이

**https://comco88-gif.github.io/pawnshop-owner/**

설치나 로그인 없이 PC·휴대폰 브라우저에서 바로 열립니다. 휴대폰에서는 "홈 화면에 추가"로 앱처럼 쓸 수 있습니다. 진행 상황은 브라우저에 자동 저장됩니다.

- 물건 27종 · 손님 8종 · 단골 사연 3명 · 감정 도감 39곳 · 가게 정비 6종
- 루페 감정: 시계 뒷면 각인, CC 맞물림, 청자 굽바닥처럼 정품 기준과 직접 비교해 가품을 찾아낸다
- 밤마다 감정 복기, 가품을 잡으면 도감에 기록

게임 속 브랜드와 상품은 감정 연습을 위한 묘사이며, 등장하는 가품 단서와 수치는 모두 가상입니다.

## 구조

```
pawnshop.html          게임 원본 (Claude 아티팩트용, <html> 태그 없음)
index.html             GitHub Pages용 생성물 — 직접 고치지 말 것
tools/build-pages.sh   pawnshop.html → index.html 생성
manifest.webmanifest   홈 화면 앱 설정
icons/                 앱 아이콘 (192 · 512 · apple-touch 180)
CLAUDE.md              설계·밸런스·다음 할 일
```

`pawnshop.html`을 고친 뒤 `./tools/build-pages.sh`를 돌리고 둘 다 커밋합니다. `main`에 반영되면 1~2분 뒤 GitHub Pages에 자동 반영됩니다.
