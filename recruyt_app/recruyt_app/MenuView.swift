//
//  MenuView.swift
//  recruyt_app
//
//  Created by Student Account on 8/9/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button (action: {})
                {
                Image(systemName: "house")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Home")
                    .foregroundColor(.gray)
                    .font(.headline)
                }}
            .padding(.top, 100)
            HStack {
                NavigationLink(
                    destination: About()){
                Image(systemName: "a.square")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("About Recruyt")
                    .foregroundColor(.gray)
                    .font(.headline)
                }}
            .padding(.top, 30)
            HStack {
                NavigationLink(
                    destination: InterviewPrep()){
                Image(systemName: "pencil")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Interview Prep")
                    .foregroundColor(.gray)
                    .font(.headline)
                }}
            .padding(.top, 30)
            HStack {
                NavigationLink(
                    destination: Tips_Resume()){
                Image(systemName: "gearshape")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Tips and Resume")
                    .foregroundColor(.gray)
                    .font(.headline)
                }}
            .padding(.top, 30)
            HStack {
                NavigationLink(
                    destination: Connections()){
                Image(systemName: "gearshape")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Building Connections")
                    .foregroundColor(.gray)
                    .font(.headline)
                }}
            .padding(.top, 30)
            Spacer()
        }
            .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

