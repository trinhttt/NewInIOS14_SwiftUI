//
//  NewInIOS14_SwiftUIApp.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI

@main
struct NewInIOS14_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SynchronizeAnimationView()
        }
    }
    
//    var body: some Scene {
//        DocumentGroup(newDocument: TextFile()) { file in
//            FileView(document: file.$document)
//        }
//    }
}
