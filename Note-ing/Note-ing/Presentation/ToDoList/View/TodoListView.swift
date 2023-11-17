//
//  TodoListView.swift
//  Note-ing
//
//  Created by 윤지성 on 2023/11/10.
//

import SwiftUI

struct TodoListView: View {
    enum ListSelected{
        case notYet
        case alreadyDid
        case all
    }
    @State var checkList: [CheckComponent] = [CheckComponent(isChecked: false, content: "데이터 통신입문")]
    @State var selectedBtn: ListSelected = .notYet
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack{
                Text("To Do List").font(.pretendard(.semibold, size: 25))
                HStack{
                    Spacer()
                    
                    Button(action: {
                        selectedBtn = .notYet
                        
                    }){
                        Image(systemName: "checklist.unchecked").foregroundColor(selectedBtn == .notYet ? Color("MainGreen") : .gray)
                    }
                    Spacer()
                    Button(action: {
                        selectedBtn = .alreadyDid
                        
                    }){
                        Image(systemName: "checklist.checked").foregroundColor(selectedBtn == .alreadyDid ? Color("MainGreen") : .gray)
                    }
                    Spacer()
                    
                    Button(action: {
                        selectedBtn = .all
                    }){
                        Image(systemName: "checklist").foregroundColor(selectedBtn == .all ? Color("MainGreen") : .gray)
                    }
                    Spacer()
                }.padding(.top, 10)
                
                if #available(iOS 16.0, *) {
                    List {
                        Text("data communication")
                        Text("crypto")
                        
                    }.scrollContentBackground(.hidden)
                } else {
                }
                
                Spacer()
                
            }
            Button (action: {
                
            }){
                Image(systemName: "plus.circle.fill").resizable()
                    .frame(width: 40, height: 40).foregroundColor(Color("MainGreen"))
                
            }.padding()
        }
        
        
        
    }
    func delete(at offsets: IndexSet) {
           checkList.remove(atOffsets: offsets)
       }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
extension Image{
    func changeMainGreenColor(){
        self.foregroundColor(Color("MainGreen"))
    }
    func changeGreyColor(){
        self.foregroundColor(.gray)
    }
}
