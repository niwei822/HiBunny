//
//  CarouselView.swift
//  HiBunny
//
//  Created by cecily li on 10/31/22.
//

import SwiftUI

struct CarouselView: View {
    @State var selection: Int = 1
    let maxCount: Int = 8
    @State var timeAdded: Bool = false
    @State private var scale = 1.0
    var body: some View {
        TabView(selection: $selection, content: {
            ForEach(1..<maxCount) { count in
                Image("bunny\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.easeIn, value: scale)
        .onAppear(perform: {
            if !timeAdded {
                addTimer()
            }
        })
    }
    func addTimer() {
        timeAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { (timer) in
            if selection == maxCount - 1 {
                selection = 1
            } else {
                selection += 1
            }
        }
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
