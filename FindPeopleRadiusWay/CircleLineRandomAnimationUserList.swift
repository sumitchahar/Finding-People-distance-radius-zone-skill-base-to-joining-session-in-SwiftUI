//  CircleLineRandomAnimationUserList.swift
//  FindPeopleRadiusWay
//  Created by Sumit on 20/02/25.

import SwiftUI

struct CircleLineRandomAnimationUserList: View {
    
    
    let streamBlue = Color(.init(red: 255.0/255.0, green: 151.0/255.0, blue: 186.0/255.0))
    let streamRed = Color(.init(red: 255.0/255.0, green: 151.0/255.0, blue: 186.0/255.0))
    let streamPink = Color(.pink)

    @State var measuring = false

 ///@@
    @State private var currentPhraseIndex = 0
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var thinking: Bool = false
    
    let phrases = [
        "Searching..           "
    ]

    //@@
    @State private var startAnimation = true
    @State private var duration = 1.0
    @State private var animationAmount = 0.8

    
   var body: some View {
       ZStack {
         GeometryReader { geometry in
             ZStack {
            
                 HeartIcon()
                     .rotationEffect(.degrees(-34))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.18, y: -(geometry.size.width * 0.66 / 2))
                 HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 38, height: 38)
                             .rotationEffect(.degrees(-34))
                             .position(x: (geometry.size.width) - geometry.size.width * 0.18, y: -(geometry.size.width * 0.66 / 2))
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
                }
    
                 HeartIcon()
                     .rotationEffect(.degrees(-34))
                     .frame(width: 28, height: 28)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.84, y: -(geometry.size.width * 0.78 / 2))
                 
                 HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 28, height: 28)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 28, height: 28)
                             .rotationEffect(.degrees(-34))
                             .position(x: (geometry.size.width) - geometry.size.width * 0.84, y:  -(geometry.size.width * 0.78 / 2))
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
             }
                
                 HeartIcon()
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.79, y: (geometry.size.width * 0.6 / 2))
                 
                 HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 38, height: 38)
                             .position(x: (geometry.size.width) - geometry.size.width * 0.79, y: (geometry.size.width * 0.6 / 2))
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
                     }
                 
                 HeartIcon()
                     .frame(width: 38, height: 38)
                     .rotationEffect(.degrees(-34))
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.84, y: geometry.size.width + geometry.size.width * 0.18)
                 
                HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 38, height: 38)
                             .rotationEffect(.degrees(-34))
                             .position(x: (geometry.size.width) - geometry.size.width * 0.84, y: geometry.size.width + geometry.size.width * 0.18)
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
                 }
                 
                HeartIcon()
                     .frame(width: 30, height: 30)
                     .rotationEffect(.degrees(-34))
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.10, y: geometry.size.width + geometry.size.width * 0.21)
                 
                 HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 30, height: 30)
                             .rotationEffect(.degrees(-34))
                             .position(x: (geometry.size.width) - geometry.size.width * 0.10, y: geometry.size.width + geometry.size.width * 0.21)
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
                 }
                 
                 HeartIcon()
                     .frame(width: 30, height: 30)
                     .rotationEffect(.degrees(-34))
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .position(x: (geometry.size.width) - geometry.size.width * 0.12, y: geometry.size.width - geometry.size.width * 0.80 / 2)
                 
                 HeartIcon()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [110,10], dashPhase: measuring ? -100 : 100))
                     .frame(width: 38, height: 38)
                     .foregroundStyle(
                         .linearGradient(
                             colors: [streamBlue, streamRed],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
                     .phaseAnimator([false, true]) { openPart, moveAround in
                         HeartIcon()
                             .stroke(style: StrokeStyle(
                                 lineWidth: 1,
                                 lineCap: .round,
                                 lineJoin: .round,
                                 miterLimit: 0, dash: [110,10], dashPhase: moveAround ? -100 : 225))
                             .frame(width: 30, height: 30)
                             .rotationEffect(.degrees(-34))
                             .position(x: (geometry.size.width) - geometry.size.width * 0.12, y: geometry.size.width - geometry.size.width * 0.80 / 2)
                             .foregroundStyle(
                                 .linearGradient(
                                     colors: [streamPink, streamPink],
                                     startPoint: .leading,
                                     endPoint: .trailing
                                 )
                             )
                             .scaleEffect(1)
                     } animation: { moveAround in
                             .linear.speed(0.03).repeatForever(autoreverses: false)
                 }
                 
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [12]))
                        .fill(.pink)
                        .shadow(color:.gray, radius: 1)
                        .frame(width: geometry.size.width - 20, height: geometry.size.width - 20)
                        .phaseAnimator([false, true]) { openPart, moveAround in
                            Circle()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [12],dashPhase: moveAround ? -100 : 225))
                                .fill(.pink)
                                .frame(width: geometry.size.width - 20, height: geometry.size.width - 20)

                        } animation: { moveAround in
                                .linear.speed(0.05).repeatForever(autoreverses: false)
                        }
                 
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2))
                        .fill(.pink)
                        .shadow(color:.gray, radius: 1.4)
                        .frame(width: (geometry.size.width * 0.8 ) - 20, height: (geometry.size.width * 0.8 ) - 20)
                        .phaseAnimator([false, true]) { wwdc24, chromaRotate in
                            wwdc24
                                .hueRotation(.degrees(chromaRotate ? 420 : 0))
                        } animation: { chromaRotate in
                                .easeInOut(duration: 2)
                        }

                    
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2))
                        .fill(.pink)
                        .shadow(color:.gray, radius: 1.6)
                        .frame(width: (geometry.size.width * 0.6 ) - 20, height: (geometry.size.width * 0.6 ) - 20)
                        .phaseAnimator([false, true]) { wwdc24, chromaRotate in
                            wwdc24
                                .hueRotation(.degrees(chromaRotate ? 420 : 0))
                        } animation: { chromaRotate in
                                .easeInOut(duration: 1)
                        }

                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2))
                        .fill(.pink)
                        .shadow(color:.gray, radius: 1.8)
                        .frame(width: (geometry.size.width * 0.4 ) - 20, height: (geometry.size.width * 0.4 ) - 20)
                        .phaseAnimator([false, true]) { wwdc24, chromaRotate in
                            wwdc24
                                .hueRotation(.degrees(chromaRotate ? 420 : 0))
                        } animation: { chromaRotate in
                                .easeInOut(duration: 4)
                        }
                 
                     HStack(spacing: 0) {
                         ForEach(Array(phrases[currentPhraseIndex].enumerated()), id: \.offset) { index, letter in
                             Text(String(letter))
                                 .foregroundStyle(.black)
                                 .font(.custom("Georgia", size: 18, relativeTo: .headline))
                                 .hueRotation(.degrees(thinking ? 220 : 0))
                                 .opacity(thinking ? 0 : 1)
                                 .scaleEffect(thinking ? 1.5 : 1, anchor: .bottom)
                                 .animation(.easeInOut(duration: 0.5).delay(1).repeatForever(autoreverses: false).delay(Double(index) / 20), value: thinking)
                         }
                     }
                     .padding(.leading, 50)
                 .onReceive(timer) { _ in
                     withAnimation {
                         currentPhraseIndex = (currentPhraseIndex + 1) % phrases.count
                     }
                 }
                 ZStack {
                     Circle()
                         .strokeBorder(.gray, lineWidth: 12)
                         .frame(width: geometry.size.width * 0.28, height: geometry.size.width * 0.28)
                         .shadow(color:.gray,radius: 1)
                         .overlay(content: {
                             Image("girl1")
                                 .resizable()
                                 .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                                 .cornerRadius(geometry.size.width * 26 / 2)
                         })
                         .animation(.easeInOut(duration: 1.2), value: animationAmount)
                         .cornerRadius(geometry.size.width * 28 / 2)
                         .position(x: geometry.size.width * 0.26 / 2, y: -(geometry.size.width * 0.26 / 2))

                     Circle()
                         .fill(.white)
                         .frame(width: 5, height: 5, alignment: .center)
                         .cornerRadius(5/2)
                         .offset(x: -48)
                         .rotationEffect(.degrees(startAnimation ? -360 : 0))
                         .animation(.easeInOut(duration: duration).repeatForever(autoreverses: false),
                                    value: startAnimation
                     )
                        .frame(width: geometry.size.width * 0.28, height: geometry.size.width * 0.28)
                         .cornerRadius(geometry.size.width * 26 / 2)
                         .position(x: geometry.size.width * 0.26 / 2, y: -(geometry.size.width * 0.26 / 2))

                 }

                 
                   Image("image2")
                         .resizable()
                         .aspectRatio(contentMode: .fill)
                         .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                         .cornerRadius(geometry.size.width * 26 / 2)
                         .position(x: geometry.size.width / 2 , y: -(geometry.size.width * 0.29))

                   
                    Image("girl2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                            .cornerRadius(geometry.size.width * 26 / 2)
                            .position(x: (geometry.size.width) - geometry.size.width * 0.14, y:40)
      // bottom
                   
                     Image("girl3")
                           .resizable()
                           .aspectRatio(contentMode: .fill)
                           .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                           .cornerRadius(geometry.size.width * 26 / 2)
                           .position(x: geometry.size.width * 0.26 / 2, y:geometry.size.width - geometry.size.width * 0.26 / 2)

                 ZStack {
                     
                     Circle()
                         .strokeBorder(.gray, lineWidth: 12)
                         .frame(width: geometry.size.width * 0.28, height: geometry.size.width * 0.28)
                         .shadow(color:.gray,radius: 1)
                         .overlay(content: {
                             Image("image3")
                                 .resizable()
                                 .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                                 .cornerRadius(geometry.size.width * 26 / 2)
                         })
                         .animation(.easeInOut(duration: 1.2), value: animationAmount)
                         .cornerRadius(geometry.size.width * 28 / 2)
                         .position(x: (geometry.size.width) - ((geometry.size.width * 0.30) / 2 ) , y:geometry.size.width - geometry.size.width * 0.30 / 2)

                     Circle()
                         .fill(.white)
                         .frame(width: 5, height: 5, alignment: .center)
                         .cornerRadius(5/2)
                         .offset(x: -49)
                         .rotationEffect(.degrees(startAnimation ? -360 : 0))
                         .animation(.easeInOut(duration: duration).repeatForever(autoreverses: false),
                                    value: startAnimation
                     )
                        .frame(width: geometry.size.width * 0.28, height: geometry.size.width * 0.28)
                         .cornerRadius(geometry.size.width * 26 / 2)
                         .position(x: (geometry.size.width) - ((geometry.size.width * 0.30) / 2 ) , y:geometry.size.width - geometry.size.width * 0.30 / 2)
                 }
                 
                   Image("image1")
                         .resizable()
                         .aspectRatio(contentMode: .fill)
                         .frame(width: geometry.size.width * 0.26, height: geometry.size.width * 0.26)
                         .cornerRadius(geometry.size.width * 26 / 2)
                         .position(x: ( geometry.size.width + geometry.size.width * 0.20) / 2 , y: geometry.size.width + geometry.size.width * 0.18 )
                
                }
                .fixedSize(horizontal: true, vertical: true)
                .frame(maxWidth:geometry.size.width ,maxHeight: geometry.size.height)
            }
            .padding([.leading,.trailing], 20)
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.init(red: 255.0/255.0, green: 204.0/255.0, blue: 228.0/255.0),.init(red: 255.0/255.0, green: 216.0/255.0, blue: 233.0/255.0),.init(red: 247.0/255.0, green: 242.0/255.0, blue: 239.0/255.0),.init(red: 247.0/255.0, green: 242.0/255.0, blue: 239.0/255.0)]), startPoint: .top, endPoint: .bottom)
        )
        .onAppear {
                thinking = true
            withAnimation {
                self.startAnimation.toggle()
            }
                animationAmount += 0.1
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                animationAmount  = 1.0
            }
        }
    }
}

 #Preview {
    CircleLineRandomAnimationUserList()
 }


