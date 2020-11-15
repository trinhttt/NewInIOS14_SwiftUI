//
//  ColorPickerView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var bgColor = Color.white
    var body: some View {
        VStack {
            Text("Hello, World!")
                .foregroundColor(bgColor)
            ColorPicker("Change text color", selection: $bgColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
