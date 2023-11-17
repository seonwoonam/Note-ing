//
//  Memo.swift
//  Note-ing
//
//  Created by seonwoo on 2023/11/17.
//

import Foundation

struct Memo : Identifiable{
    var id = UUID()
    var title: String
    var content: String
    var insertDate: Date
    
    init(title: String, content: String){
        self.title = title
        self.content = content
        insertDate = Date()
    }
    
    static var dummyMemoList = [
        Memo(title: "SwiftUI", content: "SwiftUI is good"),
        Memo(title: "SwiftUI", content: "SwiftUI is good"),
        Memo(title: "SwiftUI", content: "SwiftUI is good"),
        Memo(title: "SwiftUI", content: "SwiftUI is good"),
    ]
}
