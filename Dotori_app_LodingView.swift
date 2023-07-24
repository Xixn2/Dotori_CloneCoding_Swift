//
//  ContentView.swift
//  Dotori_CloneCoding_Swift
//
//  Created by 서지완 on 2023/07/21.
//

import SwiftUI

struct ContentView: View {
    @State var showView = true
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(red: 43 / 255, green: 46 / 255, blue: 60 / 255)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("dotori_1")
                    .resizable()
                    .frame(width: 83, height: 80)
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
            }
            /*
            // Dotori Logo 밑에 'Dotori'라는 문구를 넣는 코드
            HStack {
                Text("Dotori")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(-407)
                .offset(x: 380, y: 830)
                }*/
        }
    }
}





// Canvas를 이용할 수 있게 해주는 코드
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
