//
//  ProfileViewModel.swift
//  Studies
//
//  Created by iOS Developer on 15/02/24.
//

import Foundation

//MARK: - VIEWMODEL
struct ProfileViewModel{
    
    var isFollowing = false
    
    var userContent = UserContent(picture: "CrushIcon", name: "Crush", nick: "@SurfCrush", Follower: "10.000")
    
    mutating func followToogle(){
        self.isFollowing.toggle()
    }
}
