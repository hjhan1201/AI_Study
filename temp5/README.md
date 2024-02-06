# AIFFEL Campus Online 7th Code Peer Review Templete

- 코더 : 한현종
- 리뷰어 : 김승


🔑 **PRT(Peer Review Template)**

- [x]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
    - 문제를 해결하는 완성된 코드란 프로젝트 루브릭 3개 중 2개, 
    퀘스트 문제 요구조건 등을 지칭
        - 해당 조건을 만족하는 부분의 코드 및 결과물을 근거로 첨부
->  README.md 하단 이미지에 첨부된 실행 이미지
    
- [x]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
    - 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
    - 주석을 보고 코드 이해가 잘 되었는지 확인
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.

 
```dart
객체 간 위치 조정을 위한 expanded 추가
        Expanded(
            // 객체 간 위치 조정을 위한 expanded 추가
            flex: 2,
            // 루브릭 구현을 위한 스택 지정
            child: Stack(
              children: [
                // 최하위부터 최상위 스택을 지정하고, 색으로 구분
                Container(height: 300, width: 300, color: Colors.red,),
                Container(height: 240, width: 240, color: Colors.orange,),
                Container(height: 180, width: 180, color: Colors.yellow,),
                Container(height: 120, width: 120, color: Colors.green,),
                Container(height: 60, width: 60, color: Colors.blue,),
              ]
```

- [x]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인 또는
    - 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 
    실험이 기록되어 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.

```dart
// 객체 간 위치 조정을 위한 expanded 추가
        Expanded(
            // 객체 간 위치 조정을 위한 expanded 추가
            flex: 2,
            // 루브릭 구현을 위한 스택 지정
            child: Stack(
              children: [
                // 최하위부터 최상위 스택을 지정하고, 색으로 구분
                Container(height: 300, width: 300, color: Colors.red,),
                Container(height: 240, width: 240, color: Colors.orange,),
                Container(height: 180, width: 180, color: Colors.yellow,),
                Container(height: 120, width: 120, color: Colors.green,),
                Container(height: 60, width: 60, color: Colors.blue,),
              ],
            )
        )

      ],
```
        
- [x]  **4. 회고를 잘 작성했나요?**
    - 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해
    배운점과 아쉬운점, 느낀점 등이 상세히 기록되어 있는지 확인
        - 딥러닝 모델의 경우,
        인풋이 들어가 최종적으로 아웃풋이 나오기까지의 전체 흐름을 도식화하여 
        모델 아키텍쳐에 대한 이해를 돕고 있는지 확인


- [x]  **5. 코드가 간결하고 효율적인가요?**
    - 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 모듈화(함수화) 했는지
        - 잘 작성되었다고 생각되는 부분을 근거로 첨부합니다.

```dart
Widget build(BuildContext context) {
    // 본문 화면 구현부 반환
    return Column(
      children: [
        // 객체 간 간격 조정을 위한 빈 컨테이너 생성
        Container(height: 180,),
        // 객체 간 위치 조정을 위한 expanded 추가
        Expanded(
          // 객체가 차지할 비율 설정
          flex: 1,
          // 버튼 이미지 중앙 정렬
          child: Center(
            // 버튼 생성
            child: ElevatedButton(
              // 버튼이 눌렸을 때 실행할 이벤트 등록
              onPressed: () => print('버튼이 눌렸습니다.'),
              //버튼에 들어갈 텍스트 지정
              child: Text(
                'Text',
                // 텍스트 사이즈 지정
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              // 버튼 크기 지정을 위한 스타일 지정
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    // 버튼 외곽선 라운드한 사각형으로 지정
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                // 버튼 크기 지정
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top:15, left: 50.0, right: 50.0, bottom: 15)
                ),
              ),
            ),
          ),
        ),
```
          
![image](https://github.com/hjhan1201/AI_Study/assets/149549379/e903a663-c9c4-4728-94d2-b548e41e04a0)


