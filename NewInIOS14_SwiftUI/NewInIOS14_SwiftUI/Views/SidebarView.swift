//
//  SidebarView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/18/20.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        List(1..<10) {
            Text("Row \($0)")
        }
        .listStyle(SidebarListStyle())
    }
}
struct PrimaryView: View {
    var body: some View {
        Text("Primary")
    }
}
struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}
struct SidebarView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            PrimaryView()
            DetailView()
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
