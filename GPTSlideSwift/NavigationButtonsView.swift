//
//  NavigationButtonsView.swift
//  GPTSlideSwift
//  
//  Created by elmetal on 2023/04/14
//  
//

import SwiftUI

struct NavigationButtonsView: View {
    @Binding var currentSlideIndex: Int
    let slidesCount: Int

    var body: some View {
        HStack {
            Button(action: {
                if currentSlideIndex > 0 {
                    currentSlideIndex -= 1
                }
            }) {
                Image(systemName: "arrow.left")
            }
            Spacer()
            Button(action: {
                if currentSlideIndex < slidesCount - 1 {
                    currentSlideIndex += 1
                }
            }) {
                Image(systemName: "arrow.right")
            }
        }
        .padding(.horizontal)
    }
}

struct NavigationButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonsView(currentSlideIndex: .constant(1), slidesCount: 2)
    }
}
