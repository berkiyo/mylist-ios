//
//  AddTodoView.swift
//  Mylist
//
//  Created by Berk Dogan on 6/5/2022.
//

import SwiftUI

struct AddTodoView: View {
	// MARK: Properties
	
	@Environment(\.presentationMode) var presentationMode
	
	@State private var name: String = ""
	@State private var priority: String = "Normal"
	
	let priorities = ["High", "Normal", "Low"]
	
	// MARK: Body
	
    var body: some View {
		NavigationView {
			VStack {
				Form {
					// MARK: Todo Name
					TextField("Todo", text: $name)
					
					// MARK: Todo Priority
					Picker("Priority", selection: $priority) {
						ForEach(priorities, id: \.self) {
							Text($0)
						}
					}
					.pickerStyle(SegmentedPickerStyle())
					
					// MARK: Save button
					Button(action: {
						print("Save a new todo item.")
						
					}) {
						Text("Save")
					}
				} //: Form
				Spacer()
			} //: VStack
		}
		.navigationBarTitle("New Todo", displayMode: .inline)
		.navigationBarItems(trailing:
			Button(action: {
			self.presentationMode.wrappedValue.dismiss()
		}) {
			Image(systemName: "xmark")
		}) //: Navbaritems
    } //: Navigation
	
}




struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
