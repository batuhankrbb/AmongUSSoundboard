//
//  IAPManager.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 7.12.2020.
//

import StoreKit
import Combine
import SwiftUI


class IAPManager: NSObject {
    
    private override init() {
        super.init()
    }
    
    static let shared = IAPManager()
    
    var myProduct:SKProduct?
    
    // kullanıcıya başarılı olup olmadığını mesajla döner
    let purchasePublisher = PassthroughSubject<(String, Bool), Never>()

    //restore edilme sayacı
    var totalRestoredPurchases = 0
   
    // ürünleri çekme isteği başlatma
    func getProductsV5() {
        let items:Set = ["ibrahimkarababa.AmongUSSoundboard.adblock"]
        let request = SKProductsRequest(productIdentifiers: items)
        request.delegate = self
        request.start()
    }
    
    // fiyat alma
    func getPriceFormatted(for product: SKProduct) -> String? {
      let formatter = NumberFormatter()
      formatter.numberStyle = .currency
      formatter.locale = product.priceLocale
      return formatter.string(from: product.price)
    }
    
}

extension IAPManager: SKProductsRequestDelegate, SKRequestDelegate {
    
    // productrequest
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        if let product = response.products.first{
            myProduct = product
        }
    }
    
    // sadece hata yakalama
    func request(_ request: SKRequest, didFailWithError error: Error) {
      print("didFailWithError ",error)
      purchasePublisher.send(("Purchase request failed ",true))
    }
    func requestDidFinish(_ request: SKRequest) {
      print("request did finish")
    }
    
    // queue izlemeyi başlama ve bitirme
    func startObserving() {
      SKPaymentQueue.default().add(self)
    }
    func stopObserving() {
      SKPaymentQueue.default().remove(self)
    }
    
    // hata çıkmasın diye satın alma aktif mi kontrolü (bazıları çocukları yüzünden kapatıyor)
    func canMakePayments() -> Bool {
      return SKPaymentQueue.canMakePayments()
    }
    
    // alış emri
    func purchaseV5(product: SKProduct){
        guard let myProduct = myProduct else {return}
        if SKPaymentQueue.canMakePayments(){
            let payment = SKPayment(product: myProduct)
            SKPaymentQueue.default().add(self)
            SKPaymentQueue.default().add(payment)
        }
    }
    
    //restore emri
    func restorePurchasesV5() {
      totalRestoredPurchases = 0
      SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
    // purchase publisher'a mesaj yollar başarılı veya başarısız olarak. Bunu alertte göstericez Alttaki de error yollar.
    func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
        if totalRestoredPurchases != 0 {
            purchasePublisher.send(("IAP: Purchases successfull restored!",true))
        } else {
            purchasePublisher.send(("IAP: No purchases to restore!",true))
        }
      }

      func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error) {
        if let error = error as? SKError {
            if error.code != .paymentCancelled {
                purchasePublisher.send(("IAP Restore Error: " + error.localizedDescription,false))
            } else {
                purchasePublisher.send(("IAP Error: " + error.localizedDescription,false))
            }
        }
      }
    
}


// işlem sonuçları burada user defaults vb ayarlanacak
extension IAPManager: SKPaymentTransactionObserver {
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
     transactions.forEach { (transaction) in
      switch transaction.transactionState {
      case .purchased:
        PurchaseControlService.shared.purchaseCompleted()
        SKPaymentQueue.default().finishTransaction(transaction)
        purchasePublisher.send(("Yey! You purchased the full version. ",true))
      case .restored:
        PurchaseControlService.shared.purchaseCompleted()
        totalRestoredPurchases += 1
        SKPaymentQueue.default().finishTransaction(transaction)
        purchasePublisher.send(("Yey! You succesfully restored. ",true))
      case .failed:
        if let error = transaction.error as? SKError {
          purchasePublisher.send(("Payment Error \(error.code) ",false))
          print("Payment Failed \(error.code)")
        }
        SKPaymentQueue.default().finishTransaction(transaction)
      case .deferred:
        print("You're not allowed. Ask Mom ...")
        purchasePublisher.send(("Payment Diferred ",false))
      case .purchasing:
        print("working on it...")
        purchasePublisher.send(("Payment in Process ",false))
      default:
        break
      }
    }
  }
}





