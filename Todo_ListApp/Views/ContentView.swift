//
//  ContentView.swift
//  Todo_ListApp
//
//  Created by Kemal Kazanc on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingNewScreen = false
    
    @State var myTasks: [Task] = [
        Task(title: "Test Task 1", priority: 2),
        Task(title: "Test Task 1", priority: 1),
        Task(title: "Test Task 1", priority: 4)
    ]
    var body: some View {
        VStack{
            if myTasks.isEmpty{
                Text("Aucune tâche, vous êtes libres")
            } else {
                List(myTasks) { task in
                    TaskView(task: task)
                }
            }
        }
        //Création d'un btn pour ajouter une tâche
        .overlay(alignment: .bottomTrailing){
            Button {
                isShowingNewScreen = true
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.white)
                    .padding()
                    .background(Circle())
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            }
            .padding()
        }
        // Ouverture d'une nouvelle modale
        .sheet(isPresented: $isShowingNewScreen) {
            NewTaskView(taskCollection: $myTasks)
        }
    }
}

#Preview {
    ContentView()
}
