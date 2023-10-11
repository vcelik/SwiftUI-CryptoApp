//
//  CoinDetailDataService.swift
//  Crypto
//
//  Created by Volkan Celik on 01/06/2023.
//

import Foundation
import Combine

class CoinDetailDataService{
    
    @Published var coinDetails:CoinDetailModel?=nil
//    var cancellables=Set<AnyCancellable>()
    var coinDetailSubscription:AnyCancellable?
    let coin:CoinModel
    
    init(coin:CoinModel){
        self.coin=coin
        getCoinDetails()
    }
    
    func getCoinDetails(){
        guard let url=URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false")else{return}
        coinDetailSubscription=NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoinDetails) in
                self?.coinDetails = returnedCoinDetails
                self?.coinDetailSubscription?.cancel()
            })
//            .store(in: &cancellables)

    }
}
