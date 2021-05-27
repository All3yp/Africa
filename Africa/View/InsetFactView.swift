//
//  InsetFactView.swift
//  Africa
//
//  Created by Alley Pereira on 27/05/21.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }  //: Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,
                   idealHeight: 168,
                   maxHeight: 180)
        } //: Box
    }
}


// MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
