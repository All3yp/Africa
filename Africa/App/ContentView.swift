//
//  ContentView.swift
//  Africa
//
//  Created by Alley Pereira on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - PROPERTIES

        // MARK: - BODY
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0)
                    )
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)
        } //: Nav
            .padding()
    }
}



// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// MARK: - PROPERTIES

// MARK: - BODY

// MARK: - PREVIEW
