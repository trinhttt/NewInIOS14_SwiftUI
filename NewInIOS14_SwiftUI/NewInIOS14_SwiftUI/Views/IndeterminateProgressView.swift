//
//  IndeterminateProgressView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI

struct IndeterminateProgressView: View {
    @State private var downloadAmount: CGFloat = 0
    
    var body: some View {
        VStack {
            ProgressView("Downloading...", value: downloadAmount, total: 100)
            Button("Increment") {
                if downloadAmount < 100 {
                    downloadAmount += 10
                }
            }
        }
    }
}

struct IndeterminateProgressView_Previews: PreviewProvider {
    static var previews: some View {
        IndeterminateProgressView()
    }
}
