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
                .padding(.bottom)

            if let imageName = slide.imageName {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }

            Text(slide.content)
                .font(.title)
                .multilineTextAlignment(.leading)
        }
    }
}


struct SlideContentView_Previews: PreviewProvider {
    static var previews: some View {
        SlideContentView(slide: Slide(id: 1,
                                      title: "Slide 1",
                                      content: "the first content",
                                      imageName: nil))
    }
}
