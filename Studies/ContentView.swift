//
//  ContentView.swift
//  Studies
//
//  Created by iOS Developer on 15/02/24.
//

import SwiftUI

//MARK: - View
struct ContentView: View {
    @State var viewModel = ProfileViewModel()
    
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(colors: [.blue,.bg], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                //Profile
                
                Image(viewModel.userContent.picture)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(100)
                    .padding(.bottom, 10)
                    .font(.subheadline)
                
                Text(viewModel.userContent.name)
                    .font(.system(size: 70, weight: .light))
                
                
                Text(viewModel.userContent.nick)
                    .font(.system(size: 23, weight: .regular ))
                    .foregroundColor(.blue)
                
                Text("\(viewModel.userContent.Follower)")
                    .font(.system(size: 50, weight: .light))
                    .padding(10)
                
                VStack{
                    //Button Follow
                    Button{ viewModel.followToogle() } label: {
                        Label("Follow", systemImage: "person.fill.badge.plus")
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .tint(!viewModel.isFollowing ? .blue : .white)
                }
                
                //Button Follow
                Button{} label: {
                    Label("Send a message", systemImage: "paperplane.fill")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!viewModel.isFollowing)
            }
            .padding()
            
        }
    }
    }
        



#Preview {
    ContentView()
}
