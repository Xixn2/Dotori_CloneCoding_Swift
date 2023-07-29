import SwiftUI

struct ContentView: View {
    @State private var isAppliedFirst = false
    @State private var isApplied1 = false
    @State private var isApplied2 = false

    var body: some View {
        ZStack {
            Color(red: 43 / 255, green: 46 / 255, blue: 60 / 255)
                .ignoresSafeArea()

            ZStack {
                Rectangle()
                    .fill(Color(red: 23 / 255, green: 22 / 255, blue: 30 / 255))
                    .frame(width: 350, height: 210)
                    .cornerRadius(23)
                    .offset(y: -40)

                Text("전체보기")
                    .foregroundColor(.gray)
                    .font(.system(size: 15, weight: .bold))
                    .offset(x: 120, y: -120)

                Text("자습신청")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
                    .offset(x: -118, y: -120)

                Text("오후 8시~9시에 자습 신청이 가능해요")
                    .foregroundColor(.gray)
                    .font(.system(size: 12, weight: .bold))
                    .offset(x: -59, y: 35)

                if isAppliedFirst {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 80, height: 35)
                        .cornerRadius(13)
                        .offset(x: 110, y: 30)
                    Text("신청취소")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .bold))
                        .offset(x: 110, y: 30)
                        .onTapGesture {
                            isApplied2 = false
                            isAppliedFirst = false
                        }
                } else {
                    Rectangle()
                        .fill(isApplied2 ? Color.gray : Color(red: 94 / 255, green: 101 / 255, blue: 226 / 255))
                        .frame(width: 80, height: 35)
                        .cornerRadius(13)
                        .offset(x: 110, y: 30)

                    Text(isApplied2 ? "신청취소" : "자습신청")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .bold))
                        .offset(x: 110, y: 30)
                        .onTapGesture {
                            if isApplied2 {
                                isAppliedFirst = true
                            } else {
                                isApplied2.toggle()
                            }
                        }
                }
            }
        }
        .fullScreenCover(isPresented: $isAppliedFirst, content: {
            // 두 번째 화면이 보여질 View를 여기에 작성하세요.
            ZStack {
                Color(red: 43 / 255, green: 46 / 255, blue: 60 / 255)
                    .ignoresSafeArea()

                Rectangle()
                    .fill(Color(red: 23 / 255, green: 22 / 255, blue: 30 / 255))
                    .frame(width: 250, height: 150)
                    .cornerRadius(20)

                Text("정말로 취소하시겠습니까?")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .bold))
                    .offset(y: -38)

                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 80, height: 35)
                    .cornerRadius(13)
                    .offset(x: -60, y: 30)
                    .onTapGesture {
                        isAppliedFirst = false
                    }

                Text("예")
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .bold))
                    .offset(x: -60, y: 30)
                    .onTapGesture {
                        isAppliedFirst = false
                        isApplied2 = false
                        isAppliedFirst = false
                    }
                Rectangle()
                    .fill(Color(red: 94 / 255, green: 101 / 255, blue: 226 / 255))
                    .frame(width: 80, height: 35)
                    .cornerRadius(13)
                    .offset(x: 61, y: 30)
                Text("아니요")
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .bold))
                    .offset(x: 61, y: 30)
                    .onTapGesture {
                        isAppliedFirst = false
                    }
            }
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
