//
//  ScrollingPages.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI

struct PageContentView: View {
    var color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    var body: some View {
        Text("1")
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(self.color)
    }

}

struct ScrollingPages: View {
    var body: some View {
        TabView {
            PageContentView(color: .red)
            PageContentView(color: .green)
            PageContentView(color: .blue)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ScrollingPages_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingPages()
    }
}
