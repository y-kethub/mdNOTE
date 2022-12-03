//
//  EditorView.swift
//  mdNOTE
//
//  Created by developer on 2022/12/03.
//

import SwiftUI

struct EditorView: View {
    @Binding var text: String
    var body: some View {
        TextEditor(text: $text)
    }
}

struct EditorView_Previews: PreviewProvider {
    @State static var text = "a"
    static var previews: some View {
        EditorView(text: $text)
    }
}
