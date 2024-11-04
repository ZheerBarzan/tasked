//
//  AddView.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter Task", text: $textFieldText)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button(action: saveTask, label: {
                    Text("Save Task")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame( maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }.padding(14)
            
        }.navigationTitle("Add Task 📌")
    }
    func saveTask(){
        if validTextField(){
            listViewModel.addItems(title: textFieldText)
            presentation.wrappedValue.dismiss()
        }
    }
    
    func validTextField() -> Bool{
        if textFieldText.count < 3 || textFieldText.count > 250 || textFieldText.isEmpty{
            return false
        }
        return true
    }
}

#Preview {
    NavigationView{
    
        AddView()
    }.environmentObject(ListViewModel())
}
