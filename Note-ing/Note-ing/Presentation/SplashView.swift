//
//  SplashView.swift
//  Note-ing
//
//  Created by 윤지성 on 2023/11/10.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("MainGreen"), Color("SubPrimaryColor")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack {

                    Text("Note-ing").font(.pretendard(.extraBold, size: 50)).padding(.bottom, 15).foregroundColor(.white)

                    Text("당신의 유능한 일정 관리 툴").font(.pretendard(.medium, size: 20))
                   
                    
                }
            }
        }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
