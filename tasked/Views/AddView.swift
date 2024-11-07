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
    
    @State var alertTitle:String = ""
    @State var showAlert: Bool = false
    
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
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }.padding(14)
            
        }.navigationTitle("Add Task 📌")
            .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveTask(){
        if validTextField(){
            listViewModel.addItems(title: textFieldText)
            presentation.wrappedValue.dismiss()
        }
    }
    
    func validTextField() -> Bool{
        if textFieldText.count < 3 || textFieldText.count > 250 || textFieldText.isEmpty{
            alertTitle = "Your task must be between 3 and 250 characters and not be empty 😱"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
    
        AddView()
    }.environmentObject(ListViewModel())
}
