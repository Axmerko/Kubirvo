const String defaultGooglePayConfigString = '''{
  "provider": "google_pay",
  "data": {
    "environment": "TEST",
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "gopay",
            "gatewayMerchantId": "1337338453"
          }
        },
        "parameters": {
          "allowedCardNetworks": ["VISA", "MASTERCARD"],
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "billingAddressRequired": true,
          "billingAddressParameters": {
            "format": "FULL",
            "phoneNumberRequired": false
          }
        }
      }
    ],
    "merchantInfo": {
      "merchantId": "1337338453",
      "merchantName": "Kobrasoft CZ s.r.o."
    },
    "transactionInfo": {
      "countryCode": "CZ",
      "currencyCode": "CZK"
    }
  }
}''';