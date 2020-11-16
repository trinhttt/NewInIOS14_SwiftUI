//
//  VideoPlayerView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/16/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
            }
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
