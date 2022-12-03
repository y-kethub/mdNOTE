//
//  ContentView.swift
//  mdNOTE
//
//  Created by developer on 2022/12/03.
//

import SwiftUI

struct ContentView: View {
    @State var previewFlg = false
    @State var text: String
    var body: some View {
        VStack {
            if previewFlg {
                Preview(text: $text)
            } else {
                EditorView(text: $text)
            }
            Picker(selection: $previewFlg, label: Text("Picker")) {
                Text("エディタ").tag(false)
                Text("プレビュー").tag(true)
            }
            .pickerStyle(SegmentedPickerStyle())
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: "")
    }
}
