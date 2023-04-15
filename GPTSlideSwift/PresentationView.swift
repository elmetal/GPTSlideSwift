//
//  PresentationView.swift
//  GPTSlideSwift
//  
//  Created by elmetal on 2023/04/14
//  
//

import Foundation
import SwiftUI

struct PresentationView: View {
    @State private var currentSlideIndex = 0

    let slides: [Slide] = [
        Slide(id: 0, title: "Slide 1", content: "This is the first slide."),
        Slide(id: 1, title: "Slide 2", content: "This is the second slide."),
        Slide(id: 2, title: "Slide 3", content: "This is the third slide.")
    ]

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                NavigationButtonsView(currentSlideIndex: $currentSlideIndex, slidesCount: slides.count)

                GeometryReader { geometry in
                    SlideContentView(slide: slides[currentSlideIndex])
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.8)
                }
            }
            .padding(.top)
        }
    }
}
