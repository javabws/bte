package com.okpay.api;

public class I_OkPayAPIProxy implements com.okpay.api.I_OkPayAPI {
  private String _endpoint = null;
  private com.okpay.api.I_OkPayAPI i_OkPayAPI = null;
  
  public I_OkPayAPIProxy() {
    _initI_OkPayAPIProxy();
  }
  
  public I_OkPayAPIProxy(String endpoint) {
    _endpoint = endpoint;
    _initI_OkPayAPIProxy();
  }
  
  private void _initI_OkPayAPIProxy() {
    try {
      i_OkPayAPI = (new com.okpay.api.OkPayAPIImplementationLocator()).getBasicHttpBinding_I_OkPayAPI();
      if (i_OkPayAPI != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)i_OkPayAPI)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)i_OkPayAPI)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (i_OkPayAPI != null)
      ((javax.xml.rpc.Stub)i_OkPayAPI)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.okpay.api.I_OkPayAPI getI_OkPayAPI() {
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI;
  }
  
  public java.lang.String get_Date_Time() throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.get_Date_Time();
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Balance[] wallet_Get_Balance(java.lang.String walletID, java.lang.String securityToken) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.wallet_Get_Balance(walletID, securityToken);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Balance wallet_Get_Currency_Balance(java.lang.String walletID, java.lang.String securityToken, java.lang.String currency) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.wallet_Get_Currency_Balance(walletID, securityToken, currency);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo send_Money(java.lang.String walletID, java.lang.String securityToken, java.lang.String receiver, java.lang.String currency, java.math.BigDecimal amount, java.lang.String comment, java.lang.Boolean isReceiverPaysFees, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.send_Money(walletID, securityToken, receiver, currency, amount, comment, isReceiverPaysFees, invoice);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo transaction_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long txnID, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.transaction_Get(walletID, securityToken, txnID, invoice);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.HistoryInfo transaction_History(java.lang.String walletID, java.lang.String securityToken, java.lang.String from, java.lang.String till, java.lang.Integer pageSize, java.lang.Integer pageNumber) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.transaction_History(walletID, securityToken, from, till, pageSize, pageNumber);
  }
  
  public java.lang.Long debitCard_Prepay(java.lang.String walletID, java.lang.String securityToken, java.lang.String email, java.lang.String currency, java.lang.Boolean isCourierDelivery, java.lang.String comment) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.debitCard_Prepay(walletID, securityToken, email, currency, isCourierDelivery, comment);
  }
  
  public java.lang.Long account_Check(java.lang.String walletID, java.lang.String securityToken, java.lang.String account) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.account_Check(walletID, securityToken, account);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency_Calculate(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.math.BigDecimal amount, java.lang.String currency, java.lang.Boolean feesFromAmount) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_Ecurrency_Calculate(walletID, securityToken, paymentMethod, amount, currency, feesFromAmount);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.lang.String paySystemAccount, java.math.BigDecimal amount, java.lang.String currency, java.lang.Boolean feesFromAmount, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_Ecurrency(walletID, securityToken, paymentMethod, paySystemAccount, amount, currency, feesFromAmount, invoice);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_RU(java.lang.String walletID, java.lang.String securityToken, java.lang.String cardNumber, java.math.BigDecimal amount, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_Card_RU(walletID, securityToken, cardNumber, amount, invoice);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_World(java.lang.String walletID, java.lang.String securityToken, java.lang.String cardNumber, java.lang.String currency, java.math.BigDecimal amount, java.lang.String expiryMonth, java.lang.String expiryYear, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_Card_World(walletID, securityToken, cardNumber, currency, amount, expiryMonth, expiryYear, invoice);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency_Calculate(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.math.BigDecimal amount, java.lang.String currency) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_CryptoCurrency_Calculate(walletID, securityToken, paymentMethod, amount, currency);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.lang.String paySystemAccount, java.math.BigDecimal amount, java.lang.String currency, java.lang.String invoice) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.withdraw_To_CryptoCurrency(walletID, securityToken, paymentMethod, paySystemAccount, amount, currency, invoice);
  }
  
  public java.lang.Long EX_Account_Check(java.lang.String walletID, java.lang.String securityToken, java.lang.String account) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.EX_Account_Check(walletID, securityToken, account);
  }
  
  public org.datacontract.schemas._2004._07.OkPayLink_OkPayService.ClientStatus EX_Client_Check_Status(java.lang.String walletID, java.lang.String securityToken, java.lang.String email) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.EX_Client_Check_Status(walletID, securityToken, email);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long subscriptionID) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.subscription_Get(walletID, securityToken, subscriptionID);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription[] subscriptions_Filter(java.lang.String walletID, java.lang.String securityToken, java.lang.String title, java.lang.String from, java.lang.String till, org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses[] statuses) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.subscriptions_Filter(walletID, securityToken, title, from, till, statuses);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Update(java.lang.String walletID, java.lang.String securityToken, org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription sub, java.lang.String comment) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.subscription_Update(walletID, securityToken, sub, comment);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] subscription_Get_Operations(java.lang.String walletID, java.lang.String securityToken, java.lang.Long subscriptionID) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.subscription_Get_Operations(walletID, securityToken, subscriptionID);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.preapprovedPayment_Get(walletID, securityToken, preapprovedPaymentID);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo preapprovedPayment_Charge(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID, java.math.BigDecimal amount, java.lang.String comment, java.lang.String receiver) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.preapprovedPayment_Charge(walletID, securityToken, preapprovedPaymentID, amount, comment, receiver);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Cancel(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID, java.lang.String comment) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.preapprovedPayment_Cancel(walletID, securityToken, preapprovedPaymentID, comment);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] preapprovedPayment_Get_Operations(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.preapprovedPayment_Get_Operations(walletID, securityToken, preapprovedPaymentID);
  }
  
  public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment[] preapprovedPayments_Filter(java.lang.String walletID, java.lang.String securityToken, java.lang.String title, java.lang.String invoice, java.lang.String client, org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses[] statuses) throws java.rmi.RemoteException{
    if (i_OkPayAPI == null)
      _initI_OkPayAPIProxy();
    return i_OkPayAPI.preapprovedPayments_Filter(walletID, securityToken, title, invoice, client, statuses);
  }
  
  
}