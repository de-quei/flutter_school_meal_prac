`미림급식알리미가 너무 불편한 나머지 만들게 되....`

### 😒 현재까지 미림마이스터고 급식을 확인할 수 있는 방법은?
1. 👍**미림급식알리미** instagram 계정을 팔로우하여 매일 올라오는 스토리를 조회한다. `(공식)`
2. 카카오톡 **오늘급식** 채널을 추가하여 급식을 조회한다.
3. **오늘학교** 애플리케이션을 설치하여 급식을 조회한다.
4. **식품안전나라** 웹사이트를 참고하여 급식을 조회한다.

---

### 👎 하자가 그득한 이유..
1. 미림급식알리미 `공식`
  - 교내 학생이 매일 아침 instagram 스토리를 업로드하는 방식
  - 담당 학생이 잊어버리거나.. 모종의 여러가지 이유로 안올라오는 경우가 태반
2. 카카오톡 / 앱 / 사이트 등 외부 플랫폼
- 급식 데이터가 없는지 아무것도 조회되지 않는다....

---

### 🧹 정리하자면!!
1. 공식 루트는 미급알밖에 존재함.
2. 해당 학생이 업로드하지 않으면 당일 급식 모르쇠
3. 외부 사이트, 애플리케이션의 도움도 현재까지 받지 못하는중

---

### 결론
- 미림급식알리미의 역할을 보존하되,
- 업로드 담당 학생도 편리하고
- 당일 급식을 쉽게 조회할 수 있는 서비스를 만들자!

---

### 제작방식
1. 기술
 - `flutter` `dart`
 - `vscode`
 - `android emulator`

2. 방식 제안
  - 현재 미급알 담당학생은 모든 급식 정보를 보유하고 있으니 이 점을 활용할 것.
  - 관리자 권한
    - 미급알 전용 관리자 계정 생성 --> 간단한 서비스에 로그인이 필요할까?
    - 급식 등록 버튼 클릭 시 비밀번호 입력 기능 사용
      - 등록 시엔 data.json을 수정하는 방식으로 제작
  - 급식 데이터 불러오기
    - 관리자가 입력한(수정한) data.json을 호출하여 Screen에 띄우기
    - 상태관리 : provider 이용
