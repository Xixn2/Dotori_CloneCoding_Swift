            ZStack{
                // 공지사항 틀
                Rectangle()
                    .fill(Color(red: 23 / 255, green: 22 / 255, blue: 30 / 255))
                    .frame(width: 350, height: 450)
                    .cornerRadius(23)
                    .offset(y: 75)
                
                // 공지사항 틀 안에서 스크롤 되는 부분
                ScrollView(.vertical) {
                    Rectangle()
                        .fill(Color(red: 30 / 255, green: 30 / 255, blue: 37 / 255))
                        .frame(width: 290, height: 95)
                        .cornerRadius(23)
                    Text("도토리")
                        .foregroundColor(Color .white)
                        .offset(x:-85,y:-98)
                        .bold()
                    
                    Text("Dotori 업데이트 내역 공지\n안녕하세요, Dotori 개발팀입니다.")
                        .foregroundColor(Color .gray)
                        .offset(x:-35,y:-93)
                        .bold()
                        .font(.system(size: 13, weight: .bold))
                    // 도토리 옆 공지사항 별 종류
                    Circle()
                        .foregroundColor(Color .blue)
                        //.fill(Color(red: 30 / 255, green: 30 / 255, blue: 37 / 255))
                        .frame(width: 13, height: 135)
                        .offset(x:-120,y:-218)
                        //.cornerRadius(23)
                    
                }
                .frame(height: 350)
                //.border(Color.gray) // 공지사항 안 스크롤 범위 확인용
                .offset(y: 80)
            }