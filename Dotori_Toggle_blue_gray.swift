struct TestView: View {
    @State private var isApplied: Bool = false

    var body: some View {
        ZStack(alignment: .center) {
            // ...

            if isApplied {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 80, height: 35)
                    .cornerRadius(13)
                    .offset(x:110,y:260)
                Text("신청취소")
                    .foregroundColor(.white)
                    .font(.system(size: 13, weight: .bold))
                    .offset(x: 110, y: 260) // 원하는 위치로 조정
                    .onTapGesture {
                        isApplied.toggle()
                    }
            } else {
                Rectangle()
                    .fill(Color(red: 94 / 255, green: 101 / 255, blue: 226 / 255))
                    .frame(width: 80, height: 35)
                    .cornerRadius(13)
                    .offset(x: 110, y: 260)
                    .onTapGesture {
                        isApplied.toggle()
                    }

                Text("자습신청")
                    .foregroundColor(.white)
                    .font(.system(size: 13, weight: .bold))
                    .offset(x: 110, y: 260) // 원하는 위치로 조정
            }
        }
    }
}
