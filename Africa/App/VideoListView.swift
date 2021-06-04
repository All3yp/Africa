//
//  VideoListView.swift
//  Africa
//
//  Created by Alley Pereira on 25/05/21.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES

   @State var videos: [Video] = Bundle.main.decode("videos.json")

    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)

    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                } //: ForEach
            } //: List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            })
        } //: Nav
    }
}


// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
