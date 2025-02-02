//
//  CoverImageView.swift
//  Africa
//
//  Created by Tiago de Oliveira on 14/08/24.
//

import SwiftUI

struct CoverImageView: View {
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { _ in
                Image(.coverLion)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Preview: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
