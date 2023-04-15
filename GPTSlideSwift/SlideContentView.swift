//
//  SlideContentView.swift
//  GPTSlideSwift
//  
//  Created by elmetal on 2023/04/14
//  
//

import SwiftUI

struct SlideContentView: View {
    let slide: Slide

    var body: some View {
        VStack(alignment: .leading) {
            Text(slide.title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.bottom)

            Text(slide.content)
                .font(.title)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
        }
    }
}

struct SlideContentView_Previews: PreviewProvider {
    static var previews: some View {
        SlideContentView(slide: Slide(id: 1,
                                      title: "Slide 1", content: "the first content"))
    }
}
