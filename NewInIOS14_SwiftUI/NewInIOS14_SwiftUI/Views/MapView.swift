//
//  MapView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/15/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

      var body: some View {
        VStack {
            Text("\($region.wrappedValue.center.latitude) - \($region.wrappedValue.center.longitude)")
            Map(coordinateRegion: $region)
        }
      }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
