//
//  NewTaskView.swift
//  Todo_ListApp
//
//  Created by Kemal Kazanc on 04/09/2024.
//

import SwiftUI

struct NewTaskView: View {
    
    @State private var taskName: String = ""
    @State private var priority: Int = 4
    
    @Binding var taskCollection: [Task]
    
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Nouvelle tâche ... ", text: $taskName)
                .textFieldStyle(.roundedBorder)
            
            Picker("Priorité", selection: $priority){
                Text("Aucune")
                    .tag(4)
                Text("Hello")
                    .tag(3)
                Text("Hello")
                    .tag(2)
                Text("Hello")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            
            Button(action: {
                saveTask()
            }, label: {
                Text("Créer")
                    .padding()
                    .foregroundStyle(.white)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            })
        }
        .padding()
    }
    
    private func saveTask() {
        let newTask = Task(title: taskName, priority: priority)
        taskCollection.append(newTask)
    }
}

#Preview {
    NewTaskView(taskCollection: .constant([]))
}
