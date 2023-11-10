//
//  ContentView.swift
//  Note-ing
//
//  Created by seonwoo on 2023/11/10.
//

import SwiftUI
import CoreData

struct MainView: View {

    var body: some View {
        TabView {
              CalendarView()
                .tabItem {
                    Image(systemName: "calendar").frame(width: 20, height: 20)
                    Text("캘린더")
                }
              TodoListView()
                .tabItem {
                    Image(systemName: "checklist")
                  Text("오늘의 할일")
                }
            }
            .font(.headline)
            .accentColor(Color("MainGreen"))
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
     }
}
