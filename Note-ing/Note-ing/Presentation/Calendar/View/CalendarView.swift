//
//  CalendarView.swift
//  Note-ing
//
//  Created by 윤지성 on 2023/11/10.
//

import SwiftUI

struct CalendarView: View {
    @State private var date = Date()
    var memoData : [Memo] = Memo.dummyMemoList
    
    var body: some View {
        
        VStack(){
            DatePicker(
                   "Start Date",
                   selection: $date,
                   displayedComponents: [.date]
               )
            .datePickerStyle(.graphical).padding(.horizontal, 20)

            Text("메모").font(.pretendard(.bold, size: 24)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 20)
            
            Text("글").font(.pretendard(.regular, size: 14)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 20).foregroundColor(Color.gray)

            Rectangle().fill(Color.gray).frame(height:1).padding(.horizontal, 20)

            Text("음성").font(.pretendard(.regular, size: 14)).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 20).foregroundColor(Color.gray)

            Rectangle().fill(Color.gray).frame(height:1).padding(.horizontal, 20)

            List(memoData) { memo in
                Text(memo.title)
            }
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
