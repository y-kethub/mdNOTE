//
//  Preview.swift
//  mdNOTE
//
//  Created by developer on 2022/12/03.
//

import SwiftUI

struct Preview: View {
    @Binding var text: String
    var body: some View {
        ScrollView {
            HStack {
                Text(text)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
    }
}
