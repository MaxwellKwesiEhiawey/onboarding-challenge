//
//  TabsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct TabsView: View {
    @ObservedObject var viewModel = OnboardingViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {

            CombineHalfView(viewModel: viewModel, addedView:  {
                RegisterForView(selectedTab: $viewModel.selectedTab)
            }, imageName: .register)
            .tag(0)

            CombineHalfView(viewModel: viewModel, addedView: {
            PhotoPickerView(selectedTab: $viewModel.selectedTab)
            }, imageName: .addphoto)
            .tag(1)

            CombineHalfView(viewModel: viewModel, addedView: {
            SubscriptionView(selectedTab: $viewModel.selectedTab)
            }, imageName: .pagethree)
            .tag(2)

            CombineHalfView(viewModel: viewModel, addedView: {
                InterestOptionsView(selectedTab: $viewModel.selectedTab)
            }, imageName: .pagefour)
            .tag(3)

            CombineHalfView(viewModel: viewModel, addedView: {
                LottieView(selectedTab: $viewModel.selectedTab)
            }, imageName: .success)
                .tag(4)
        }.highPriorityGesture(DragGesture())
        // .tabViewStyle(PageTabViewStyle())
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
