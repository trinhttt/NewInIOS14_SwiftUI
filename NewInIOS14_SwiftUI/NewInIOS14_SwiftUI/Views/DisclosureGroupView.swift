//
//  DisclosureGroupView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/18/20.
//

import SwiftUI

struct DisclosureGroupView: View {
    @State private var isShowing = false
    var body: some View {
        VStack {
            DisclosureGroup("Show text", isExpanded: $isShowing) {
                Text("Trinh zz struct DisclosureGroupView_Previews: PreviewProvider struct DisclosureGroupView_Previews: PreviewProvider struct DisclosureGroupView_Previews: PreviewProvider struct DisclosureGroupView_Previews: PreviewProvider struct DisclosureGroupView_Previews: PreviewProvider")
                Button("Hide") {
                    isShowing.toggle()
                }
            }
            .padding()
            Spacer()
        }
        
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
