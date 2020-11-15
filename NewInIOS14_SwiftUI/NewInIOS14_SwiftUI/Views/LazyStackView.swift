//
//  LazyStackView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI

struct LazyRow: View {
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(rowIndex: Int) {
        print("Loading row \(rowIndex)")
        id = rowIndex
    }
}

struct LazyStackView: View {
    var body: some View {
        ScrollView {
            VStack {
                 ForEach(1...1000, id: \.self, content: LazyRow.init)
//                ForEach(1...10000, id: \.self) { value in
//                    LazyRow(rowIndex: value)
//                }
            }
        }
    }
}

struct LazyStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStackView()
    }
}
