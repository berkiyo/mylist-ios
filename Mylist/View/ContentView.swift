//
//  ContentView.swift
//  Mylist
//
//  Created by Berk Dogan on 6/5/2022.
//

import SwiftUI

struct ContentView: View {
	// MARK: Priorities
	
	@State private var showingAddTodoView: Bool = false
	
	// MARK: Body
	
	
	
	
	
    var body: some View {
		NavigationView {
			List(0 ..< 5) { item in
				Text("Hello World")
			} //: LIST
			.navigationBarTitle("Todo", displayMode: .inline)
			.navigationBarItems(trailing:
				Button(action: {
				self.showingAddTodoView.toggle()
			}) {
				Image(systemName: "plus")
			}) //: AddButton
		}
		.sheet(isPresented: $showingAddTodoView) {
			AddTodoView()
		}
    } //: Navigation
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
