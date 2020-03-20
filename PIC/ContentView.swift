//
//  ContentView.swift
//  PIC
//
//  Created by User07 on 2020/3/20.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct Eye: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.addArc(center: CGPoint(x: 10, y: 10), radius: 15, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("space")
            .resizable()
                .scaleEffect(1.3)
            .offset(x: -50, y: 50)
                .edgesIgnoringSafeArea(.all)
            
            
            Path { (path) in
                path.move(to: CGPoint(x: 210, y: 350))
                
                /* Face */
                path.move(to: CGPoint(x: 210, y: 340))
                path.addQuadCurve(to: CGPoint(x: 320, y:440), control: CGPoint(x: 310, y: 340))
                path.addQuadCurve(to: CGPoint(x: 210, y:530), control: CGPoint(x: 320, y: 530))
                path.addQuadCurve(to: CGPoint(x: 100, y:440), control: CGPoint(x: 110, y: 530))
                path.addQuadCurve(to: CGPoint(x: 210, y:340), control: CGPoint(x: 110, y: 340))
                path.closeSubpath()
                /* Face */
                
                /* Right Ear */
                path.move(to: CGPoint(x: 280, y: 360))
                path.addQuadCurve(to: CGPoint(x: 320, y:350), control: CGPoint(x: 290, y: 300))
                path.addQuadCurve(to: CGPoint(x: 310, y:390), control: CGPoint(x: 330, y: 380))
                path.closeSubpath()
                /* Right Ear */
                
                /* Left Ear */
                path.move(to: CGPoint(x: 140, y: 360))
                path.addQuadCurve(to: CGPoint(x: 100, y:350), control: CGPoint(x: 120, y: 300))
                path.addQuadCurve(to: CGPoint(x: 110, y:390), control: CGPoint(x: 90, y: 380))
                path.closeSubpath()
                /* Left Ear */
                
                }.fill(Color.yellow)
            
            // Left Eye
            Eye().fill(Color(red: 137/255, green: 59/255, blue: 0)).offset(x: 160, y: 430)
            // Right Eye
            Eye().fill(Color(red: 137/255, green: 59/255, blue: 0)).offset(x: 240, y: 430)
            
            
            // Nose
            Path { (path) in
                path.move(to: CGPoint(x: 195, y: 475))
                path.addQuadCurve(to: CGPoint(x: 230, y: 475), control: CGPoint(x: 212, y: 465))
                path.addQuadCurve(to: CGPoint(x: 195, y: 475), control: CGPoint(x: 212, y: 510))
                path.closeSubpath()
            }.fill(Color(red: 137/255, green: 59/255, blue: 0))
            
            // Nose Shadow
            Path { (path) in
                path.move(to: CGPoint(x: 193, y: 465))
                path.addQuadCurve(to: CGPoint(x: 233, y: 465), control: CGPoint(x: 213, y: 450))
                path.addQuadCurve(to: CGPoint(x: 193, y: 465), control: CGPoint(x: 213, y: 460))
                //path.closeSubpath()
            }.fill(Color(red: 223/255, green: 155/255, blue: 18/255))
            
            // Left Eyebrow
            Path { (path) in
                path.move(to: CGPoint(x: 170, y: 390))
                path.addQuadCurve(to: CGPoint(x: 140, y: 410), control: CGPoint(x: 140, y: 410))
                path.addQuadCurve(to: CGPoint(x: 167, y: 390), control: CGPoint(x: 150, y: 385))
                //path.closeSubpath()
            }.fill(Color(red: 137/255, green: 59/255, blue: 0))
            
            // Right Eyebrow
            Path { (path) in
                path.move(to: CGPoint(x: 250, y: 390))
                path.addQuadCurve(to: CGPoint(x: 280, y: 410), control: CGPoint(x: 280, y: 410))
                path.addQuadCurve(to: CGPoint(x: 253, y: 390), control: CGPoint(x: 270, y: 385))
                //path.closeSubpath()
            }.fill(Color(red: 137/255, green: 59/255, blue: 0))
            
            // Text
            Text("!!! Winnie in SPACE !!!")
            .offset(x: 0, y: -150)
                .foregroundColor(Color.yellow)
                .scaleEffect(2)
                .blur(radius: 0.8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
