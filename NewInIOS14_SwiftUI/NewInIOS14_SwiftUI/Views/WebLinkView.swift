//
//  WebLinkView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/17/20.
//

import SwiftUI

struct WebLinkView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack(spacing: 20) {
            /// 1
            Link("Trinh zz", destination: URL(string: "https://github.com/")!)
            
            ///2
            Link("Trinh zz", destination: URL(string: "https://github.com/")!)
                .font(.title)
                .foregroundColor(Color.red)
            
            ///3
            Link(destination: URL(string: "https://github.com/")!) {
//                Image(systemName: "link.circle.fill")
//                        .font(.largeTitle)
                Label("Trinh zz", systemImage: "link.circle.fill")
                    .font(.largeTitle)
            }
            
            ///4
            Button("Go to git") {
                openURL(URL(string: "https://github.com/")!)
            }
        }
    }
}

struct WebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        WebLinkView()
    }
}
