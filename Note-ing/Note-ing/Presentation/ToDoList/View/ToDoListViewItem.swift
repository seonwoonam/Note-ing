//
//  ToDoListViewItem.swift
//  Note-ing
//
//  Created by 윤지성 on 2023/11/17.
//

import SwiftUI

struct ToDoListViewItem: View {
    var body: some View {
        HStack(){
            Image(systemName: "circle")
            Text("데이터 통신 입문 과제하기")

        }
    }
}

struct ToDoListViewItem_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListViewItem()
    }
}
