//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Alley Pereira on 26/05/21.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )

                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)

                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled",
                                headingText: "Wilderness in pictures")

                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)

                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.ci",
                                headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // Description

                Group {
                    HeadingView(headingImage: "info.circle",
                                headingText: "All about \(animal.name)")

                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)

                // Map

                // Link

            } //: VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: Scroll
    }
}


// MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
