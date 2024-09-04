//
//  TaskView.swift
//  Todo_ListApp
//
//  Created by Kemal Kazanc on 03/09/2024.
//
import SwiftUI

struct TaskView: View {
    
    let task: Task
    
    // Une propriété qui retourne une couleur en fonction de la priorité d'une tâche. 
    var flagColor: Color{
        if task.priority == 1{
            return .red
        } else if task.priority == 2 {
            return .orange
        } else if task.priority == 3 {
            return .blue
        } else {
            return .gray
        }
    }
    
    var body: some View {
        HStack{
            Text(task.title)
                .bold()
            Spacer()
            Image(systemName: "flag.fill")
                .foregroundStyle(flagColor)
        }
    }
}

#Preview {
    TaskView(
        task: Task(title: "Preview Task", priority: 1)
    )
    .padding()
}
