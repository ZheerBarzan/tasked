//
//  ListRowView.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//
import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text("this is my first task")
            Spacer()
        }
    }
}
