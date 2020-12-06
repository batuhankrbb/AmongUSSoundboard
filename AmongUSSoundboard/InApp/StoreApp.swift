//
//  StoreApp.swift
//  NumaraSorgulama
//
//  Created by Sercan KAYA on 6.12.2020.
//

import Foundation
import StoreKit

typealias FetcCompletionHandler =  (([SKProduct]) -> Void)
typealias  PruchaseCompletion = ((SKPaymentTransaction?) -> Void)
class StoreApp : NSObject,ObservableObject {
    @Published var allProduct = [SellProduct]()
    private let allProductID = Set(["ibrahimkarababa.AmongUSSoundboard.adblock"])
    
    private var productRquest : SKProductsRequest?
    private var fetched = [SKProduct]()
    private var fetchedComplet : FetcCompletionHandler?
    private var purchCompleted : PruchaseCompletion?
    private func startObserPaymenntQue(){
        SKPaymentQueue.default().add(self)
    }
    private var complatedPurch = [String](){
        didSet{DispatchQueue.main.async {[weak self] in
            guard let self  = self else {return }
            for index in self.allProduct.indices {
                self.allProduct[index].isLocked = !self.complatedPurch.contains(self.allProduct[index].id)
                
            }
        }}
    }
    private func buy (_ product : SKProduct, completion: @escaping PruchaseCompletion){
        purchCompleted = completion
        let payment = SKPayment(product: product)
        SKPaymentQueue.default().add(payment)
    }
    private func fetchProduct(_ completion: @escaping FetcCompletionHandler){
        guard self.productRquest == nil else { return }
        fetchedComplet = completion
        productRquest = SKProductsRequest(productIdentifiers: allProductID)
        productRquest?.delegate = self
        productRquest?.start()
    }
    override init() {
        super.init()
        fetchProduct { (product) in
            self.allProduct = product.map{SellProduct(product: $0)
                
            }
        }
    }
}
extension StoreApp{
    
    func  product(for identifier : String) -> SKProduct? {
        return fetched.first(where: {$0.productIdentifier == identifier})
    }
    
    func purchaseProduct(_ product : SKProduct) {
        startObserPaymenntQue()
        buy(product) {_ in
            
        }
    }
    
    func restorePurchase() {
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
}
extension StoreApp : SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transactions in transactions {
            var sholdFinish = false
            switch transactions.transactionState{
            case .purchased,.restored:
                complatedPurch.append(transactions.payment.productIdentifier)
           
                sholdFinish = true
            case .failed:
                sholdFinish = true
            case .deferred,.purchasing:
                break
            @unknown default:
                break
            }
            if sholdFinish {
                SKPaymentQueue.default().finishTransaction(transactions)
                DispatchQueue.main.async {
                    self.purchCompleted?(transactions)
                    self.purchCompleted = nil
                }
            }
        }
    }
    
    
}

extension StoreApp : SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let loaded  = response.products
        let invlaid = response.invalidProductIdentifiers
        
        guard !loaded.isEmpty else {
            print("ürünler yüklenmedi")
            if !invlaid.isEmpty {
                print("bulunamadı\(invlaid)")
            }
            return
            
        }
        fetched = loaded
        DispatchQueue.main.async {
            self.fetchedComplet?(loaded)
            self.fetchedComplet = nil
            self.productRquest = nil
        }
        
        
    }
}
