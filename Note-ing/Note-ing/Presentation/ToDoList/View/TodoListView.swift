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

    @State private var notCheckedLists = [
        CheckComponent(isChecked: false, content: "데이터 통신입문"),
        CheckComponent(isChecked: false, content: "컴파일러 구성"),
        CheckComponent(isChecked: false, content: "암호학과 네트워크 보안"),
        CheckComponent(isChecked: false, content: "컴퓨터 종합설계")
            ]
    
    @State private var checkedList = [
        CheckComponent(isChecked: false, content: "데이터 통신입문"),
        CheckComponent(isChecked: true, content: "컴파일러 구성"),
        CheckComponent(isChecked: false, content: "암호학과 네트워크 보안"),
        CheckComponent(isChecked: false, content: "컴퓨터 종합설계")
            ]
    
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
                    
                }.padding(.top, 10)
                
                if #available(iOS 16.0, *) {
                    List {
                        ForEach($checkedList, id: \.self) { $list in
                            HStack {
                                Text("\(list.content)")
                                
                                Spacer()
                                
                                Button(action: {
                                    if(selectedBtn == .notYet){
                                        list.isChecked = true
                                    }
                                }, label: {
                                    Image(systemName: "checkmark").resizable()
                                        .frame(width: 15, height: 15).foregroundColor(
                                            list.isChecked == true ? Color("MainGreen") : .gray)
                                })
                            }
                        }

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
        notCheckedLists.remove(atOffsets: offsets)
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
