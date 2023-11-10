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
                  Image("calendar")
                    Text("캘린더").foregroundColor(Color("MainGreen"))
                }
              TodoListView()
                .tabItem {
                  Image("list")
                  Text("오늘의 할일")
                }
            }
            .font(.headline)
            .accentColor(.green)
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
     }
}
