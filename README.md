# SwiftUINewsApp

## SwiftUI의 바인딩 특성을 이용하여 Fetch 해온 뉴스 data를 List에 뿌려주기

기존 Swift에는 없는 SwiftUI만의 바인딩 특성을 사용하여 데이터를 뿌려보겠습니다.

- https://newsapi.org/ 의 뉴스 api로 작업하였습니다.

- api key는 config에 저장,gitignore에 등록하여 git에 업로드 되지 않도록 하였습니다. ( https://ggasoon2.tistory.com/18 )

- State와 Observable, Published를 활용하여 fetch 한 뉴스 data를 SwiftUI List에 binding 해주었습니다. ( https://ggasoon2.tistory.com/9 )
