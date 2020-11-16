//
//  TextIconLabel.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/17/20.
//

import SwiftUI

struct TextIconLabelView: View {
    var body: some View {
        VStack {
            Label("Trinh", systemImage: "person.crop.circle")
                .font(.title)
            // use your own images, like this but not scale if image is too big
//            Label("Welcome to the app", image: "image1")
            Divider()
            VStack {
                Label {
                    Text("Trinh")
                        .foregroundColor(.primary)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Capsule())
                } icon: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 64, height: 64)
                }
            }
        }
    }
}

struct TextIconLabel_Previews: PreviewProvider {
    static var previews: some View {
        TextIconLabelView()
    }
}
