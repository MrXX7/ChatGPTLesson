//
//  ListView.swift
//  ChatGPTLesson
//
//  Created by Oncu Can on 22.12.2022.
//

import SwiftUI

struct ListView: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]
    @State private var newItem = ""

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(items, id: \.self) { item in
                        HStack {
                            Text(item)
                            Spacer()
                            Button(action: {
                                self.items.removeAll(where: { $0 == item })
                            }) {
                                Image(systemName: "trash")
                            }
                        }
                    }
                    .onMove(perform: move)
                }

                HStack {
                    TextField("New item", text: $newItem)
                    Button(action: {
                        self.items.append(self.newItem)
                        self.newItem = ""
                    }) {
                        Image(systemName: "plus")
                    }
                }
                .padding()
            }
            .navigationBarTitle("List")
            .navigationBarItems(trailing: EditButton())
        }
    }

    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
