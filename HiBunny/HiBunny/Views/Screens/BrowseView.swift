//
//  BrowseView.swift
//  HiBunny
//
//  Created by cecily li on 10/31/22.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            CarouselView()
        })
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
    }
}
